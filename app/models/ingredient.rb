class Ingredient < ActiveRecord::Base
  attr_accessible :ingredient_category_id, :name, :recipe_id, :unit
  belongs_to :recipe
end
