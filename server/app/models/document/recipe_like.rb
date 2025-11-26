class Document::RecipeLike
  include Mongoid::Document
  include Mongoid::Timestamps

  store_in collection: "recipe_likes"

  belongs_to :user
  belongs_to :recipe, inverse_of: :likes
end
