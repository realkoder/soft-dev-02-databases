class ForceCreateLlmUsageCreatedAtIndex < ActiveGraph::Migrations::Base
  def up
    add_index :LlmUsage, :created_at, force: true
  end

  def down
    drop_index :LlmUsage, :created_at
  end
end
