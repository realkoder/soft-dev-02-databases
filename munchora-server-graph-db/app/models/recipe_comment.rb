class RecipeComment
  include ActiveGraph::Node

  # Properties
  id_property :id, auto: :uuid
  property :comment, type: String
  property :created_at, type: DateTime, default: -> { DateTime.now }
  property :updated_at, type: DateTime, default: -> { DateTime.now }

  # Relationships
  has_one :out, :recipe, type: :COMMENTED
  has_one :out, :user, type: :CREATED

  # Validations
  validates :comment, length: { maximum: 500 }
end
