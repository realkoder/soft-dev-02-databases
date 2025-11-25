class ForceCreateIngredientIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :Ingredient, :id, type: :unique
  end

  def down
    drop_constraint :Ingredient, :id
  end
end
