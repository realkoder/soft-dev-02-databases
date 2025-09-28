class RecipeComment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :comment, type: String

  belongs_to :user
  belongs_to :recipe, inverse_of: :comments

  validates :comment, presence: true, length: { maximum: 1_500 }
end