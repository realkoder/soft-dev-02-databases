class Document::Recipe
  include Mongoid::Document
  include Mongoid::Timestamps

  store_in collection: 'recipes'

  field :title, type: String
  field :description, type: String
  field :image_url, type: String
  field :instructions, type: Array
  field :is_public, type: Boolean, default: false
  field :cuisine, type: Array # ["Italian", "Mediterranean"]
  field :difficulty, type: String # "easy", "medium", "hard"
  field :tags, type: Array # ["vegetarian", "quick", "gluten-free"]
  field :prep_time, type: Integer, default: 10
  field :cook_time, type: Integer, default: 10
  field :servings, type: Integer, default: 1

  embeds_many :ingredients

  # Reference to user (instead of foreign key)
  belongs_to :user

  has_many :likes, class_name: 'RecipeLike', inverse_of: :recipe
  has_many :comments, class_name: 'RecipeComment', inverse_of: :recipe

  # Indexes for performance
  index({ user_id: 1 })    # Fast lookup of user's recipes (both private and public)
  index({ title: 1 })      # For title searches
  index({ is_public: 1 })  # Fast lookup of public recipes for browsing
  index({ tags: 1 })       # Fast filtering by tags (e.g., "vegetarian", "quick")
  index({ cuisine: 1 })    # Fast filtering by cuisine type (e.g., "Italian")
  index({ difficulty: 1 }) # Fast filtering by difficulty level

  validates :title, presence: true, length: { maximum: 150 }
  validates :image_url, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'must be a valid URL' }, allow_blank: true
  validates :description, presence: true, length: { maximum: 2_000 }
  validates :instructions, presence: true
  validate :instructions_length_limit
  validates :difficulty, inclusion: { in: %w[easy medium hard] }, allow_nil: true
  validates :prep_time, :cook_time, :servings,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 },
            allow_nil: true
  validates :tags, length: { maximum: 10 }
  validates :cuisine, length: { maximum: 30 }

  # Optional: normalize tags and cuisine arrays to avoid messy data
  before_save :normalize_tags_and_cuisine

  private

  def normalize_tags_and_cuisine
    self.difficulty = difficulty&.downcase
    self.tags = tags.map(&:downcase).uniq if tags.present?
  end

  def instructions_length_limit
    if instructions.is_a?(Array)
      total_length = instructions.join(' ').length
      if total_length > 3000
        errors.add(:instructions, 'combined length must be less than 3000 characters')
      end
    else
      errors.add(:instructions, 'must be an array of steps')
    end
  end
end
