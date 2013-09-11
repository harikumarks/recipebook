class Step < ActiveRecord::Base
  attr_accessible :activity, :recipe_id, :sequence, :time
  belongs_to :recipe
end
