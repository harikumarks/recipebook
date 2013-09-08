class Recipe < ActiveRecord::Base
  attr_accessible :description, :name, :quantity, :recipe_category_id, :user_id
end
