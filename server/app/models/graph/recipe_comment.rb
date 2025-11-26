class Graph::RecipeComment
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  self.mapped_label_name = 'RecipeComment'

  # Properties
  id_property :id, auto: :uuid
  property :comment, type: String

  # Relationships
  has_one :out, :recipe, type: :COMMENTED, model_class: 'Graph::Recipe'
  has_one :out, :user, type: :CREATED, model_class: 'Graph::User'

  # Validations
  validates :comment, length: { maximum: 500 }
end
