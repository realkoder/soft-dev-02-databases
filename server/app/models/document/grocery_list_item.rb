class Document::GroceryListItem
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :grocery_list, class_name: "Document::GroceryList"

  field :name, type: String
  field :category, type: String
  field :is_completed, type: Boolean, default: false
  field :added_by_id, type: BSON::ObjectId # reference to User

  belongs_to :added_by, class_name: "Document::User", optional: true

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: GroceryCategories::CATEGORIES }
end
