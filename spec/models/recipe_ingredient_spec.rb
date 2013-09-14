require 'spec_helper'

describe RecipeIngredient do

  before do
    @recipeing = FactoryGirl.create(:recipe_ingredient)

  end
  subject { @recipeing}
  it { should be_valid}

  describe "should not be valid if quantity is blank" do
    before {@recipeing.quantity=""  }
    it { should_not be_valid}

  end

end
