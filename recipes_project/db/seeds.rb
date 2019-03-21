# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all
RecipeIngredient.destroy_all
UserIngredient.destroy_all

10.times do 
    user = User.create({
        name: Faker::Name.name,
    })

    ingredient = Ingredient.create({
        name: Faker::Food.ingredient,
    })

    recipe = Recipe.create({
        name: Faker::Food.dish,
        user_id: user.id
    })

    RecipeIngredient.create({
        recipe_id: recipe.id,
        ingredient_id: ingredient.id
    })

    UserIngredient.create({
        user_id: user.id,
        ingredient_id: ingredient.id
    })
end

Recipe.create(name: "Swagger")