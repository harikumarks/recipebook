class RecipeCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :recipes # dependent: :restrict, validate: :true
  validates :name , presence: true , length: {:maximum => 30 }  , :uniqueness => true
end
