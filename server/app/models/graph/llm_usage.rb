class Graph::LlmUsage
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  self.mapped_label_name = "LlmUsage"

  id_property :id, auto: :uuid

  property :provider, type: String
  property :model, type: String
  property :prompt, type: String
  property :prompt_tokens, type: Integer
  property :completion_tokens, type: Integer

  # Relationships
  has_one :in, :user, origin: :llm_usages, model_class: "Graph::User"
  has_one :in, :recipe, origin: :llm_usages, model_class: "Graph::Recipe"
end
