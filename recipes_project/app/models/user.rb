class User < ActiveRecord::Base
    has_many :recipes
    has_many :user_ingredients
    has_many :ingredients, through: :user_ingredients
end