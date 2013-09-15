class Recipe < ActiveRecord::Base
  attr_accessible :description, :name, :quantity, :recipe_category_id, :user_id
  belongs_to :user
  belongs_to :recipe_category
  has_many :recipe_ingredients ,dependent: :destroy, validate: :true
  has_many :presteps ,dependent: :destroy, validate: :true
  has_many :steps,dependent: :destroy, validate: :true

  validates :name , presence: true , length: {:maximum => 30}  , :uniqueness => true
  validates :recipe_category_id , presence: true
  validates :user_id, presence: true
  validates :quantity , presence: true, :inclusion => {:in => 1...100}

end
