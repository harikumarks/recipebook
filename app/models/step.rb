class Step < ActiveRecord::Base
  attr_accessible :activity, :recipe_id, :sequence, :time
  belongs_to :recipe
  validates  :activity, presence: true
  validates :recipe_id, presence: true
  validates :sequence , presence: true , inclusion: {:in => 1...1000}
  validates :time , presence: true , inclusion: {:in => 1...3000}

end
