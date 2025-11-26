class Graph::Recipe
  include ActiveGraph::Node
  include ActiveGraph::Timestamps

  self.mapped_label_name = 'Recipe'

  # Properties
  id_property :id, auto: :uuid
  property :title, type: String
  property :description, type: String
  property :image_url, type: String
  property :instructions # JSON string[]
  property :is_public, type: Boolean, default: false
  property :cuisine # JSON string[]
  property :difficulty, type: String
  property :tags # JSON string[]
  property :prep_time, type: Integer, default: 10
  property :cook_time, type: Integer, default: 10
  property :servings, type: Integer, default: 1

  serialize :cuisine
  serialize :instructions
  serialize :tags

  # Relationships
  has_one :out, :user, type: :CREATED_BY, model_class: 'Graph::User'
  has_many :out, :llm_usages, type: :HAS_LLM_USAGE, model_class: 'Graph::LlmUsage'
  has_many :out, :ingredients, type: :HAS_INGREDIENT, dependent: :destroy, model_class: 'Graph::Ingredient'
  has_many :in, :likes, type: :LIKED, model_class: 'Graph::RecipeLike', dependent: :destroy
  has_many :in, :comments, type: :COMMENTED, model_class: 'Graph::RecipeComment', dependent: :destroy

  # Validations
  validates :title, presence: true, length: { maximum: 150 }
  validates :description, presence: true, length: { maximum: 2000 }
  validates :instructions, presence: true
  validates :instructions, length: { maximum: 3_000 }
  validates :difficulty, inclusion: { in: %w[easy medium hard] }, allow_nil: true
  validates :prep_time, :cook_time, :servings,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  validates :tags, length: { maximum: 500 }
  validates :cuisine, length: { maximum: 50 }
  validates :image_url, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'must be a valid URL' }, allow_blank: true

  # JSON serialization
  # def as_json(options = {})
  #   super(options).tap do |recipe_json|
  #     recipe_json["recipe"]["cuisine"] = JSON.parse(cuisine) if cuisine.present?
  #     recipe_json["recipe"]["instructions"] = JSON.parse(instructions) if instructions.present?
  #     recipe_json["recipe"]["tags"] = JSON.parse(tags) if tags.present?
  #   end
  # end
end
