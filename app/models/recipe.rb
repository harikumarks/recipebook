class Recipe < ActiveRecord::Base
  attr_accessible :description, :name, :quantity, :recipe_category_id, :user_id
  belongs_to :user
  belongs_to :recipe_category
  has_many :recipe_ingredients
  has_many :presteps
  has_many :steps

end
