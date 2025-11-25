class ForceCreateRecipeIndexes < ActiveGraph::Migrations::Base
  def up
    add_index :Recipe, :title
    add_index :Recipe, :difficulty
    add_index :Recipe, :is_public
    add_index :Recipe, :updated_at
  end

  def down
    drop_index :Recipe, :title
    drop_index :Recipe, :difficulty
    drop_index :Recipe, :is_public
    drop_index :Recipe, :updated_at
  end
end
