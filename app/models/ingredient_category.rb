class IngredientCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :ingredients
end
