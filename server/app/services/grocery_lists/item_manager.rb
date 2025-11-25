module GroceryLists
  class ItemManager
    def self.add_item(list, params, user)
      GroceryListItem.create!(
        name: params[:name],
        category: params[:category],
        added_by: user,
        grocery_list: list
      )
    end

    def self.remove_item(list, item_id)
      GroceryListItem.find_by(id: item_id).destroy
    end
  end
end
