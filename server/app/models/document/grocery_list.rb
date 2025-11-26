class Document::GroceryList
  include Mongoid::Document
  include Mongoid::Timestamps

  store_in collection: "grocery_lists"

  field :name, type: String
  field :owner_id, type: BSON::ObjectId

  # Owner reference
  belongs_to :owner, class_name: "Document::User", inverse_of: :grocery_lists

  # Embedded items (store items inside the list document)
  embeds_many :items, class_name: "Document::GroceryListItem"

  # Users this list is shared with (many-to-many)
  has_and_belongs_to_many :shared_users,
                          class_name: "Document::User",
                          inverse_of: :shared_grocery_lists

  # Indexes
  index({ owner_id: 1 })
  index({ shared_user_ids: 1 })

  # client relies on id not _id
  def as_json(options = {})
    attrs = super(options)
    attrs["id"] = attrs.delete("_id") if attrs.has_key?("_id")
    attrs
  end

  validates :name, presence: true, length: { maximum: 50 }
end
