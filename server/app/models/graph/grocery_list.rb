class Graph::GroceryList
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  self.mapped_label_name = 'GroceryList'

  id_property :id, auto: :uuid
  property :name, type: String

  # Relationships
  has_one :out, :owner, type: :CREATED_BY, model_class: 'Graph::User'
  has_many :out, :items, type: :HAS_ITEM, dependent: :destroy, model_class: 'Graph::GroceryListItem'
  has_many :in, :shared_users, type: :CAN_ACCESS, model_class: 'Graph::User'

  validates :name, presence: true, length: { maximum: 50 }
end
