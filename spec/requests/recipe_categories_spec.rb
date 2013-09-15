require 'spec_helper'
include Warden::Test::Helpers

describe "RecipeCategories" do
  subject { page }
  before do
    Warden.test_mode!
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

  end
 describe "Check Category added " do
   # Will use FactoryGirl to create category in recipes spec
   before do
   @category="Dinner"
   visit recipe_categories_path
   click_link "Add new"
   fill_in "Name", :with =>  @category
   click_button "Save"


   end
    it { should have_content(@category)}
 end



end



