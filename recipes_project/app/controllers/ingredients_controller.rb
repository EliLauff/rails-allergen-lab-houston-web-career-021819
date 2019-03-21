class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.sort_ingredients
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end
end