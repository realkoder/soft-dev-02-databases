class RecipeLike
  include ActiveGraph::Node

  # Properties
  id_property :id, auto: :uuid
  property :created_at, type: DateTime, default: -> { DateTime.now }
  property :updated_at, type: DateTime, default: -> { DateTime.now }

  # Relationships
  has_one :out, :recipe, type: :LIKED
  has_one :out, :user, type: :CREATED
end
