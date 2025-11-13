class GroceryLists::Creator
  def self.call(user, params)
    GroceryList.create!({ name: params[:name], owner: user })
  end
end
