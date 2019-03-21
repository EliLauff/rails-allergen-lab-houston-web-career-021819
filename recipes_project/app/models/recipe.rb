class Recipe < ActiveRecord::Base
    belongs_to :user
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients

    def self.sort_recipes
        sorted_array = Recipe.all.sort_by { |recipe| recipe.ingredients.length }.reverse
    end
end