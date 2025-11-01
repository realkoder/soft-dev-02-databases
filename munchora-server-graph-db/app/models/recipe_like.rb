class RecipeLike
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  # Properties
  id_property :id, auto: :uuid

  # Relationships
  has_one :out, :recipe, type: :LIKED
  has_one :out, :user, type: :CREATED
end
