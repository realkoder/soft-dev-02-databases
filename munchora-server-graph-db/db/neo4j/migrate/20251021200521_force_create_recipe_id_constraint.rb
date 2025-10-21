class ForceCreateRecipeIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :Recipe, :id, type: :unique
  end

  def down
    drop_constraint :Recipe, :id
  end
end
