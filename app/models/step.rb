class Step < ActiveRecord::Base
  attr_accessible :activity, :recipe_id, :sequence, :time
end
