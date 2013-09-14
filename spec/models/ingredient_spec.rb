require 'spec_helper'

describe Ingredient do

  before do
    #@ingcat = FactoryGirl.build(:ingredient_category)
    @ing=FactoryGirl.build(:ingredient)
  end

  subject { @ing}
  it { should be_valid}

  describe "name should be present"      do
    before { @ing.name=""}
    it { should_not be_valid}
  end

  describe "category should be present"      do
    before { @ing.ingredient_category_id=""}
    it { should_not be_valid}
  end


end
