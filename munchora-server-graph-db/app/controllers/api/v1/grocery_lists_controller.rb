class Api::V1::GroceryListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_grocery_list, only: [:update, :destroy, :add_item, :remove_item, :share, :unshare]

  def index
    owned_lists = current_user.owned_grocery_lists.as_json(include: { owner: {}, items: {}, shared_users: {} })
    shared_lists = current_user.shared_grocery_lists.as_json(include: { owner: {}, items: {}, shared_users: {} })

    all_lists = (owned_lists + shared_lists).uniq

    render json: all_lists
  end

  def create
    list = GroceryLists::Creator.call(current_user, grocery_list_params)
    render json: list.as_json(include: { owner: {}, items: {}, shared_users: {} })
  end

  # PUT /api/v1/grocery_lists
  def update
    @grocery_list.update!(grocery_list_params)
    render json: @grocery_list
  end

  def destroy
    if @grocery_list.owner_id == current_user.id
      @grocery_list.destroy
      head :no_content
    else
      GroceryLists::Sharer.unshare(@grocery_list, current_user.id)
      head :no_content
    end
  end

  def add_item
    item = GroceryLists::ItemManager.add_item(@grocery_list, item_params, current_user)
    render json: item, status: :created
  end

  # DELETE /api/v1/grocery_lists/remove-item/:item_id
  def remove_item
    item_id = params[:item_id]
    GroceryLists::ItemManager.remove_item(@grocery_list, item_id)
    head :no_content
  end

  def share
    user_ids = Array(params[:user_ids])
    GroceryLists::Sharer.share(@grocery_list, user_ids)
    head :no_content
  end

  def unshare
    GroceryLists::Sharer.unshare(@grocery_list, params[:user_id])
    head :no_content
  end

  def update_item
    item = GroceryListItem.find(params[:item_id])
    @grocery_list = item.grocery_list

    unless @grocery_list.owner == current_user || @grocery_list.shared_users.include?(current_user)
      return head :forbidden
    end

    update_attrs = {}
    update_attrs[:is_completed] = params[:is_completed] unless params[:is_completed].nil?
    update_attrs[:name] = params[:name] if params[:name].present?
    update_attrs[:category] = params[:category] if params[:category].present?

    item.update(update_attrs)
    render json: item
  end

  private

  def set_grocery_list
    @grocery_list = GroceryList.find_by(id: params[:id])
    head :not_found unless @grocery_list
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
