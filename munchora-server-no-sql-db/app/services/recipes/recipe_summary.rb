class Recipes::RecipeSummary
  include Mongoid::Document

  def self.aggregate_summary
    Recipe
      .collection
      .aggregate([
                   # Lookup creator (user) information
                   { "$lookup": { from: "users", localField: "user_id", foreignField: "_id", as: "creator" } },
                   { "$unwind": "$creator" },

                   # Lookup likes
                   { "$lookup": { from: "recipe_likes", localField: "_id", foreignField: "recipe_id", as: "recipe_likes" } },

                   # Lookup comments
                   { "$lookup": { from: "recipe_comments", localField: "_id", foreignField: "recipe_id", as: "recipe_comments" }  },

                   # Lookup users for liked users names
                   { "$lookup": { from: "users", localField: "recipe_likes.user_id", foreignField: "_id", as: "liked_users" } },

                   # Lookup users for comment creators
                   { "$lookup": { from: "users", localField: "recipe_comments.user_id", foreignField: "_id", as: "comment_creators" } },

                   # Project the final fields with proper handling for missing arrays
                   {
                     "$project": {
                       recipe_title: "$title",
                       recipe_created_at: "$created_at",
                       creator_user_id: "$creator._id",
                       creator_name: "$creator.first_name",

                       # Handle likes count - use 0 if array is missing/empty
                       total_likes: {
                         "$cond": {
                           if: { "$isArray": "$recipe_likes" },
                           then: { "$size": "$recipe_likes" },
                           else: 0
                         }
                       },

                       # Handle comments count
                       total_comments: {
                         "$cond": {
                           if: { "$isArray": "$recipe_comments" },
                           then: { "$size": "$recipe_comments" },
                           else: 0
                         }
                       },

                       # Handle ingredients count (embedded documents)
                       total_ingredients: {
                         "$cond": {
                           if: { "$isArray": "$ingredients" },
                           then: { "$size": "$ingredients" },
                           else: 0
                         }
                       },

                       # Create liked user names string
                       liked_user_names: {
                         "$cond": {
                           if: { "$gt": [{ "$size": "$liked_users" }, 0] },
                           then: {
                             "$reduce": {
                               input: "$liked_users",
                               initialValue: "",
                               in: {
                                 "$cond": {
                                   if: { "$eq": ["$$value", ""] },
                                   then: { "$concat": ["$$this.first_name", " ", "$$this.last_name"] },
                                   else: { "$concat": ["$$value", ", ", "$$this.first_name", " ", "$$this.last_name"] }
                                 }
                               }
                             }
                           },
                           else: ""
                         }
                       },

                       # Create comments with user names
                       comments_with_user_names: {
                         "$cond": {
                           if: { "$gt": [{ "$size": "$recipe_comments" }, 0] },
                           then: {
                             "$reduce": {
                               input: { "$zip": { inputs: ["$recipe_comments", "$comment_creators"] } },
                               initialValue: "",
                               in: {
                                 "$let": {
                                   vars: {
                                     comment: { "$arrayElemAt": ["$$this", 0] },
                                     user: { "$arrayElemAt": ["$$this", 1] },
                                     current: "$$value"
                                   },
                                   in: {
                                     "$cond": {
                                       if: { "$eq": ["$$current", ""] },
                                       then: { "$concat": ["$$user.first_name", ": ", "$$comment.comment"] },
                                       else: { "$concat": ["$$current", " | ", "$$user.first_name", ": ", "$$comment.comment"] }
                                     }
                                   }
                                 }
                               }
                             }
                           },
                           else: ""
                         }
                       }
                     }
                   },

                   # Sort by total likes descending
                   { "$sort": { total_likes: -1 } }
                 ])
  end
end
