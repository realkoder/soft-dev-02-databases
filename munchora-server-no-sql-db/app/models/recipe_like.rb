class RecipeLike
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  belongs_to :recipe, inverse_of: :likes
end