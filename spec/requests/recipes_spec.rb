require 'spec_helper'
include Warden::Test::Helpers


describe "Recipes" do
  subject { page }
  before do
    Warden.test_mode!
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    @category= FactoryGirl.create(:recipe_category)
  end
  describe "Check recipe added " do

    before do
      visit recipes_path
      @name="Dish1"
      @quantity="59"
      click_link "Add new"
      fill_in "Name", :with => @name
      fill_in "recipe_quantity", :with => @quantity
      select @category.name , :from => "recipe_recipe_category_id"
      click_button "Save"

    end
    it { should have_content(@name)}
    it { should have_content(@quantity)}

  end
end
