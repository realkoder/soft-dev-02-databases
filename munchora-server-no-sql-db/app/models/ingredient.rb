class Ingredient
  include Mongoid::Document
  embedded_in :recipe

  field :name, type: String
  field :category, type: String
  field :amount, type: Integer

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 10_000 }
  validates :category, presence: true, inclusion: { in: GroceryCategories::CATEGORIES }
end
