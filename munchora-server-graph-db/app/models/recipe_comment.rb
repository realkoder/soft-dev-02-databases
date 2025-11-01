class RecipeComment
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  # Properties
  id_property :id, auto: :uuid
  property :comment, type: String

  # Relationships
  has_one :out, :recipe, type: :COMMENTED
  has_one :out, :user, type: :CREATED

  # Validations
  validates :comment, length: { maximum: 500 }
end
