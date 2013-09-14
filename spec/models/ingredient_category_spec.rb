require 'spec_helper'

describe IngredientCategory do
  before do
    @ingcat = FactoryGirl.build(:ingredient_category)
  end
  subject { @ingcat}

  it {should be_valid}

  describe "Name should not be blank" do
    before { @ingcat.name=""}
    it { should_not be_valid}
  end


end
