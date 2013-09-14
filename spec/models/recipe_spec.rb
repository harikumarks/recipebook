require 'spec_helper'

describe Recipe do


  before do

    @recipe = FactoryGirl.build(:recipe)
  end
  subject do
    @recipe
  end
  it { should be_valid}

  it do
    should respond_to(:name)
  end
  it do
    should respond_to(:description)
  end
  it do
    should respond_to(:quantity)
  end


  describe "when recipe name is too long" do
    before { @recipe.name="a"*51}
    it {should_not be_valid}

  end

  describe "when name is not present" do
    before {@recipe.name ="" }
    it { should_not be_valid }
  end


  describe "when category is not present" do
    before do
      @recipe.recipe_category_id = ""
    end
    it { should_not be_valid }
  end

  describe "when quantity is not present" do
    before do
      @recipe.quantity=""
    end
    it { should_not be_valid }
  end


  describe "when not associated with user" do
    before do
      @recipe.user_id= ""

    end
    it { should_not be_valid }
  end

end


