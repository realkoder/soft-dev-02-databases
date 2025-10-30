class LlmUsage
  include ActiveGraph::Node

  id_property :id, auto: :uuid

  property :provider, type: String
  property :model, type: String
  property :prompt, type: String
  property :prompt_tokens, type: Integer
  property :completion_tokens, type: Integer

  property :created_at, type: DateTime
  property :updated_at, type: DateTime

  # Relations
  has_one :in, :user, origin: :llm_usages
  has_one :in, :recipe, origin: :llm_usages
end
