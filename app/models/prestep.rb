class Prestep < ActiveRecord::Base
  attr_accessible :activity,:sequence, :time, :recipe_id
  belongs_to :recipe

end
