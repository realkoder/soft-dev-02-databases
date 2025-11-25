class ForceCreateRecipeLikeIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :RecipeLike, :id, force: true
  end

  def down
    drop_constraint :RecipeLike, :id
  end
end
