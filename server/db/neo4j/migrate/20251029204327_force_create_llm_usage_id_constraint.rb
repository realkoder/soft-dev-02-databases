class ForceCreateLlmUsageIdConstraint < ActiveGraph::Migrations::Base
  def up
    add_constraint :LlmUsage, :id, type: :unique
  end

  def down
    drop_constraint :LlmUsage, :id
  end
end
