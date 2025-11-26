class Api::V1::GroceryListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_grocery_list, only: [:update, :destroy, :add_item, :remove_item, :share, :unshare]

  def index
    use_db = request.headers["use-db"].to_s.downcase
    if use_db == "mongodb"
      owned_lists = current_user.grocery_lists
      shared_lists = current_user.shared_grocery_lists
    elsif use_db == "neo4j"
      owned_lists = current_user.owned_grocery_lists.as_json(include: { owner: { only: [:id, :first_name, :last_name, :image_src] }, items: {}, shared_users: { only: [:id, :first_name, :last_name, :image_src] } })
      shared_lists = current_user.shared_grocery_lists.as_json(include: { owner: { only: [:id, :first_name, :last_name, :image_src] }, items: {}, shared_users: { only: [:id, :first_name, :last_name, :image_src] } })
    else
      owned_lists = current_user.grocery_lists.includes(:items, :shared_users)
      shared_lists = current_user.shared_grocery_lists.includes(:items, :shared_users)
    end

    all_lists = (owned_lists + shared_lists).uniq

    render json: all_lists.as_json(
      include: [
        :items,
        { shared_users: { only: [:id, :first_name, :image_src] } }
      ]
    )
  end

  def create
    list = GroceryLists::Creator.call(current_user, grocery_list_params, request.headers["use-db"].to_s.downcase)
    render json: list.as_json(include: [:items, shared_users: { only: [:id, :first_name, :last_name, :image_src] }]), status: :created
  end

  # PUT /api/v1/grocery_lists
  def update
    @grocery_list.update!(grocery_list_params)
    if request.headers["use-db"].to_s.downcase != "mongodb" && request.headers["use-db"].to_s.downcase != "neo4j"
      GroceryLists::NotifyEvents.name_updated(@grocery_list)
    end
    render json: @grocery_list
  end

  def destroy
    if @grocery_list.owner_id == current_user.id
      @grocery_list.destroy!
      GroceryLists::NotifyEvents.list_deleted(@grocery_list)
      head :no_content
    else
      use_db = request.headers["use-db"].to_s.downcase

      GroceryLists::Sharer.unshare(@grocery_list, current_user.id, use_db)
      if use_db != "mongodb" && use_db != "neo4j"
        GroceryLists::NotifyEvents.unshare_list(@grocery_list, current_user.id)
      end
      head :no_content
    end
  end

  def add_item
    use_db = request.headers["use-db"].to_s.downcase
    item = GroceryLists::ItemManager.add_item(@grocery_list, item_params, current_user, use_db)

    if use_db != "mongodb" && use_db != "neo4j"
      GroceryLists::NotifyEvents.item_added(@grocery_list, item)
    end
    if item
      render json: item, status: :created
    else
      head :forbidden
    end
  end

  # DELETE /api/v1/grocery_lists/remove-item/:item_id
  def remove_item
    item_id = params[:item_id]
    use_db = request.headers["use-db"].to_s.downcase
    GroceryLists::ItemManager.remove_item(@grocery_list, item_id, use_db)

    if use_db != "mongodb" && use_db != "neo4j"
      GroceryLists::NotifyEvents.item_removed(@grocery_list, item_id)
    end
    head :no_content
  end

  def share
    user_ids = Array(params[:user_ids])
    use_db = request.headers["use-db"].to_s.downcase
    GroceryLists::Sharer.share(@grocery_list, user_ids, use_db)

    if use_db != "mongodb" && use_db != "neo4j"
      GroceryLists::NotifyEvents.share_list(@grocery_list)
    end
    head :no_content
  end

  def unshare
    use_db = request.headers["use-db"].to_s.downcase
    GroceryLists::Sharer.unshare(@grocery_list, params[:user_id], use_db)

    if use_db != "mongodb" && use_db != "neo4j"
      GroceryLists::NotifyEvents.unshare_list(@grocery_list, params[:user_id])
    end
    head :no_content
  end

  def update_item
    use_db = request.headers["use-db"].to_s.downcase
    result = GroceryLists::ItemManager.update_item(params, current_user, use_db)
    if result == :forbidden
      return head result
    end
    render json: result
  end

  private

  def set_grocery_list
    use_db = request.headers["use-db"].to_s.downcase
    if use_db == "mongodb"
      user_id = current_user.id.is_a?(BSON::ObjectId) ? current_user.id : BSON::ObjectId(current_user.id.to_s)

      @grocery_list = Document::GroceryList.where(
        :_id => BSON::ObjectId(params[:id]),
        :$or => [
          { owner_id: user_id }, # user is owner
          { :shared_user_ids.in => [user_id] } # user is shared
        ]
      ).first
    elsif use_db == "neo4j"
      @grocery_list = Graph::GroceryList.find_by(id: params[:id])
    else
      @grocery_list = Relational::GroceryList
                        .left_outer_joins(:shared_users)
                        .where(
                          "grocery_lists.owner_id = :user_id OR users.id = :user_id",
                          user_id: current_user.id
                        )
                        .distinct
                        .find(params[:id])
    end
  end

  def grocery_list_params
    params.require(:grocery_list).permit(:name)
  end

  def item_params
    params.require(:item).permit(:name, :category)
  end

  def update_item_params
    params.permit(:is_completed)
  end
end
