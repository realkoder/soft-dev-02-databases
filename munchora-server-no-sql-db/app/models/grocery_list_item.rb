class GroceryListItem
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :category, type: String
  field :is_completed, type: Boolean, default: false
  field :added_by_id, type: BSON::ObjectId  # reference to User

  # Embedded in a grocery list
  embedded_in :grocery_list

  belongs_to :added_by, class_name: "User", optional: true

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: GroceryCategories::CATEGORIES }
end