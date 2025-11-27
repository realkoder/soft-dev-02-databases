class Api::V1::RecipeSummaryController < ApplicationController
  before_action :authenticate_user!

  def index
    use_db = request.headers['use-db']
    recipes =
      if use_db == 'mongodb'
        Recipes::MongodbRecipeSummaryService.aggregate_summary
      else
        Relational::RecipeSummaryView.order(total_likes: :desc).limit(20)
      end
    render json: recipes
  end
end
