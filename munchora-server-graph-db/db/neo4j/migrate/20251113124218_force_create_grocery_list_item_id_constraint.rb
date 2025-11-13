class ForceCreateGroceryListItemIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :GroceryListItem, :id, force: true
  end

  def down
    drop_constraint :GroceryListItem, :id
  end
end
