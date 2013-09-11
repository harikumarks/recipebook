require 'spec_helper'

describe Recipe do
    #before { @recipe= Recipe.new(name: "Chicken Masala" , description: "A spicy chicken dish", quantity: 4 , recipe_category_id: 1 , user_id: 1) }
    #subject { @recipe }
    #it { should respond_to(:name) }

    #it { should be_valid }
    before do
    @user =User.new(name: "test",email: "asd@asd.com" , password: "asdasd" , password_confirmation: "asdasd")
    @category = RecipeCategory.new(name: "Dinner")
    @recipe = Recipe.new(name: "Chicken Masala" , description: "A spicy chicken dish", quantity: 4 , recipe_category_id: 1 , user_id: 1)
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


  describe "when category is not present" do
    before {@recipe.recipe_category_id = NIL }
    it { should_not be_valid }
  end

  describe "when quantity is not present" do
    before {@recipe.quantity = NIL}
    it { should_not be_valid }
  end


  describe "when not associated with user" do
    before {@recipe.user_id= NIL}
    it { should_not be_valid }
  end
end
