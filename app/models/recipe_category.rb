class RecipeCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :recipes # dependent: :destroy
  validates :name , presence: true , length: {:maximum => 30 }  , :uniqueness => true
end
