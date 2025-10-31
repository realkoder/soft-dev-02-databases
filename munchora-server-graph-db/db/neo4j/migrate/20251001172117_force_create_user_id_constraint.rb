class ForceCreateUserIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :User, :id, type: :unique
  end

  def down
    drop_constraint :User, :id
  end
end
