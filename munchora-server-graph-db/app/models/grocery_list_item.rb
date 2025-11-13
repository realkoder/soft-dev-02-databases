class GroceryListItem
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  id_property :id, auto: :uuid
  property :name, type: String
  property :category, type: String
  property :is_completed, type: Boolean, default: false

  has_one :out, :added_by, type: :ADDED_BY, model_class: :User
  has_one :in, :grocery_list, type: :HAS_ITEM, model_class: :GroceryList

  validates :name, presence: true, length: { maximum: 50 }
  validates :category, presence: true, inclusion: { in: GroceryCategories::CATEGORIES }
end
