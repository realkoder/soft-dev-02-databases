class Document::LlmUsage
  include Mongoid::Document
  include Mongoid::Timestamps

  store_in collection: 'llm_usages'

  field :model, type: String
  field :provider, type: String
  field :prompt, type: String
  field :prompt_tokens, type: Integer
  field :completion_tokens, type: Integer

  belongs_to :user
  belongs_to :recipe

  index({ user_id: 1, created_at: -1 })

  validates :model, presence: true
  validates :provider, presence: true
  validates :prompt, presence: true
  validates :prompt_tokens, :completion_tokens,
            presence: true,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
