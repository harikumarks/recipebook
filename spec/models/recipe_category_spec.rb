require 'spec_helper'

describe RecipeCategory do
  before do
    @category = RecipeCategory.new(name: "Dinner" )

  end
  subject do
    @category
  end
  it do
    should respond_to(:name)
  end

  describe "when category name is too long"   do
  before { @category.name="a"*51}
  it {should_not be_valid}
  end
  describe "when name is not present" do

    before { @category.name=""}
    it {should_not be_valid}
  end
end
