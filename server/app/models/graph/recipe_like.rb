class Graph::RecipeLike
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  self.mapped_label_name = 'RecipeLike'

  # Properties
  id_property :id, auto: :uuid

  # Relationships
  has_one :out, :recipe, type: :LIKED, model_class: 'Graph::Recipe'
  has_one :out, :user, type: :CREATED, model_class: 'Graph::User'
end
