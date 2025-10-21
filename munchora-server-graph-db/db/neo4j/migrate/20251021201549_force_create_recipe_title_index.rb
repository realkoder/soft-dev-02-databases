class ForceCreateRecipeTitleIndex < ActiveGraph::Migrations::Base
  def up
    add_index :Recipe, :title, force: true
  end

  def down
    drop_index :Recipe, :title
  end
end
