class IngredientCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :ingredients
  validates :name, presence: true , length: {maximum: 256 , minimum: 3}
end
