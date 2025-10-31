class ForceCreateRecipeCommentIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :RecipeComment, :id, force: true
  end

  def down
    drop_constraint :RecipeComment, :id
  end
end
