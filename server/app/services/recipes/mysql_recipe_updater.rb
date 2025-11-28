class Recipes::MysqlRecipeUpdater
  def initialize(recipe, recipe_params)
    @recipe = recipe
    @recipe_params = recipe_params
  end

  def call!
    Relational::Recipe.transaction do
      if @recipe_params[:ingredients]
        # Remove old ingredients
        @recipe.ingredients.destroy_all

        # Build new ingredients
        @recipe_params[:ingredients].each do |ingredient|
          @recipe.ingredients.build(
            name: ingredient[:name],
            category: ingredient[:category],
            amount: ingredient[:amount]
          )
        end
      end

      @recipe.update!(@recipe_params.except(:ingredients))
    end
  end
end
