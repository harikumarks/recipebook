class RecipeIngredient < ActiveRecord::Base
  attr_accessible :quantity, :recipe_id, :ingredient_id
  belongs_to :recipe
  belongs_to :ingredient
end
