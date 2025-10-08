class Recipe < ApplicationRecord
  self.primary_key = 'id'

  before_create -> { self.id ||= SecureRandom.uuid }

  belongs_to :user
  has_many :llm_usages, dependent: :nullify
  has_many :ingredients, dependent: :destroy
  has_many :recipe_comments, dependent: :destroy
  has_many :recipe_likes, dependent: :destroy
  has_many :recipe_suggestions

  accepts_nested_attributes_for :ingredients, allow_destroy: true

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
