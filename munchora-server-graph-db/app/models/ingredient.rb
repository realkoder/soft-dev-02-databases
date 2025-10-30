class Ingredient
  include ActiveGraph::Node

  id_property :id, auto: :uuid

  property :name, type: String
  property :amount, type: Integer
  property :category, type: String

  validates :name, presence: true, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 10_000 }
  validates :category, presence: true, inclusion: { in: GroceryCategories::CATEGORIES }

  # Relationships
  has_one :in, :recipe, origin: :ingredients
end
