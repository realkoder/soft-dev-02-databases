class Api::V1::RecipeSummaryController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipes::RecipeSummary.aggregate_summary
    render json: @recipes
  end
end