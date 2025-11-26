class GroceryLists::ItemManager
  def self.add_item(list, params, user, use_db)
    if use_db == 'neo4j'
      Graph::GroceryListItem.create!(
        name: params[:name],
        category: params[:category],
        added_by: user,
        grocery_list: list
      )
    else
      list&.items&.create!(
        name: params[:name],
        category: params[:category],
        added_by: user
      )
    end
  end

  def self.update_item(params, current_user, use_db)
    item = if use_db == 'mongodb'
             begin
               grocery_list = Document::GroceryList.find(params[:id])
               grocery_list&.items&.find(params[:item_id])
             rescue Mongoid::Errors::DocumentNotFound
               return :forbidden
             end
    elsif use_db == 'neo4j'
             Graph::GroceryListItem.find(params[:item_id])
    else
             Relational::GroceryListItem.find(params[:item_id])
    end
    grocery_list = item.grocery_list

    unless grocery_list.owner_id == current_user.id || grocery_list.shared_users.exists?(id: current_user.id)
      return :forbidden
    end

    update_attrs = {}
    update_attrs[:is_completed] = params[:is_completed] unless params[:is_completed].nil?
    update_attrs[:name] = params[:name] if params[:name].present?
    update_attrs[:category] = params[:category] if params[:category].present?

    item.update!(update_attrs)

    if use_db != 'mongodb' && use_db != 'neo4j'
      GroceryLists::NotifyEvents.item_updated(grocery_list, item)
    end

    item
  end

  def self.remove_item(list, item_id, use_db)
    if use_db == 'neo4j'
      Graph::GroceryListItem.find_by(id: item_id).destroy
    else
      list.items.find(item_id).destroy!
    end
  end
end
