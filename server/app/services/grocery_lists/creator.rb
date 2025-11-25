class GroceryLists::Creator
  def self.call(user, params, use_db)
    if use_db == 'mongodb'
      Document::GroceryList.create!({ name: params[:name], owner: user })
    elsif use_db == 'neo4j'
      Graph::GroceryList.create!({ name: params[:name], owner: user })
    else
      Relational::GroceryList.create!({ name: params[:name], owner: user })
    end
  end
end

