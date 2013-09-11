require 'spec_helper'

describe Recipe do

    before do
      @userid=1
      @category = RecipeCategory.new(name: "Dinner")
      @recipe = Recipe.new(name: "Chicken Masala" ,
                           description: "A spicy chicken dish", quantity: 4 , recipe_category_id: 1 , user_id: @userid)
    end
    subject do
      @recipe
     end
    it do
     should respond_to(:name)
    end
    it do
      should respond_to(:description)
    end
    it do
      should respond_to(:quantity)
    end


  describe "when recipe name is too long"
    before { @recipe.name="a"*51}
    it {should_not be_valid}

    describe "when name is not present" do
      before {@recipe.name ="" }
      it { should_not be_valid }
    end


    describe "when category is not present" do
    before {@recipe.recipe_category_id = "" }
    it { should_not be_valid }
  end

  describe "when quantity is not present" do
    before {@recipe.quantity = 0}
    it { should_not be_valid }
  end


  describe "when not associated with user" do
    before {@recipe.user_id= 0}
    it { should_not be_valid }
  end
end
