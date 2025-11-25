class Relational::RecipeSummaryView < ApplicationRecord
  self.table_name = "recipe_summary_view"

  # Views are read-only
  def readonly?
    true
  end
end
