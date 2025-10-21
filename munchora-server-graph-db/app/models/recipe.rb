# app/models/recipe.rb
class Recipe
  include ActiveGraph::Node

  # Properties
  id_property :id
  property :id, type: String, default: -> { SecureRandom.uuid }
  property :title, type: String
  property :description, type: String
  property :image_url, type: String
  property :instructions, type: Array
  property :is_public, type: Boolean, default: false
  property :cuisine, type: Array
  property :difficulty, type: String
  property :tags, type: Array
  property :prep_time, type: Integer, default: 10
  property :cook_time, type: Integer, default: 10
  property :servings, type: Integer, default: 1
  property :created_at, type: DateTime, default: -> { DateTime.now }
  property :updated_at, type: DateTime, default: -> { DateTime.now }

  # Relationships
  property :user_id, type: String
  has_one :out, :user, type: :CREATED_BY, model_class: 'User'

  # Validations
  validates :title, presence: true, length: { maximum: 150 }
  validates :description, presence: true, length: { maximum: 2000 }
  validates :instructions, presence: true
  validate :instructions_length_limit
  validates :difficulty, inclusion: { in: %w[easy medium hard] }, allow_nil: true
  validates :prep_time, :cook_time, :servings,
            numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  validates :tags, length: { maximum: 10 }
  validates :cuisine, length: { maximum: 30 }
  validates :image_url, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: 'must be a valid URL' }, allow_blank: true

  # Callbacks
  before_save :normalize_tags_and_cuisine
  before_save :update_timestamp

  private

  def normalize_tags_and_cuisine
    self.difficulty = difficulty&.downcase
    self.tags = tags.map(&:downcase).uniq if tags.present?
    self.cuisine = cuisine.map(&:downcase).uniq if cuisine.present?
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

  def update_timestamp
    self.updated_at = DateTime.now
  end
end
