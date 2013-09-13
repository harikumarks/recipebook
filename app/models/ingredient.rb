class Ingredient < ActiveRecord::Base
  attr_accessible :ingredient_category_id, :name, :unit
  belongs_to :ingredient_category
  has_many :recipe_ingredients, dependent: :destroy, validate: :true
  validates :ingredient_category_id , presence: true
  validates :name , presence: true , length: {maximum: 256 , minimum: 3}
  validates :unit , presence: true ,  length: {maximum: 10 , minimum: 1}
end
