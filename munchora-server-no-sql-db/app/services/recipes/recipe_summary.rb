class Recipes::RecipeSummary
  include Mongoid::Document

  def self.aggregate_summary
    Recipe.collection.aggregate([
                                  { "$lookup": {
                                    from: "users",
                                    localField: "user_id",
                                    foreignField: "_id",
                                    as: "creator"
                                  } },
                                  { "$unwind": "$creator" },
                                  # ... other lookups
                                  { "$project": {
                                    recipe_title: "$title",
                                    recipe_created_at: "$created_at",
                                    creator_user_id: "$creator._id",
                                    creator_name: "$creator.first_name",
                                    total_likes: { "$size": "$likes" },
                                    total_comments: { "$size": "$comments" },
                                    total_ingredients: { "$size": "$ingredients" }
                                  } },
                                  { "$sort": { total_likes: -1 } }
                                ])
  end
end
