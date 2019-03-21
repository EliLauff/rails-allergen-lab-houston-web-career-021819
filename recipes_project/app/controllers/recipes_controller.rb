class RecipesController < ApplicationController
    def index
        @recipes = Recipe.sort_recipes
    end

    def new
        @users = User.all 
        @ingredients = Ingredient.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def create
        @recipe = Recipe.new(recipe_params)
        @ingredients = params[:recipe][:ingredient_ids]
        if @recipe.save
            @ingredients.each do |ingredient|
                RecipeIngredient.create(recipe_id: @recipe.id, ingredient_id: ingredient)
            end
            redirect_to recipe_path(@recipe)
        else
            render :new 
        end
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id, :ingredient_ids)
    end
end