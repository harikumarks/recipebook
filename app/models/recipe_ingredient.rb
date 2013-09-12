class RecipeIngredient < ActiveRecord::Base
  attr_accessible :quantity, :recipe_id, :ingredient_id
  belongs_to :recipe
  belongs_to :ingredient
  validates :quantity, presence: true
  validates :recipe_id, presence: true
  validates :ingredient_id, presence: true
end
