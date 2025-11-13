class ForceCreateGroceryListIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :GroceryList, :id, force: true
  end

  def down
    drop_constraint :GroceryList, :id
  end
end
