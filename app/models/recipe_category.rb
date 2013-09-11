class RecipeCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :recipes
  validates :name , presence: true , length: {:maximum => 30 }
end
