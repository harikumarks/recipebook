class Ingredient < ActiveRecord::Base
  attr_accessible :ingredient_category_id, :name, :unit
  belongs_to :ingredient_category
  has_many :recipe_ingredients, dependent: :destroy, validate: :true
end
