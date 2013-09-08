class Ingredient < ActiveRecord::Base
  attr_accessible :ingredient_category_id, :name, :recipe_id, :unit
end
