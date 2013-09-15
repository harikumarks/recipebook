require 'spec_helper'
include Warden::Test::Helpers


describe "Ingredients" do
  subject { page }
  before do
    Warden.test_mode!
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    @category= FactoryGirl.create(:ingredient_category)
  end
  describe "Check ingredient added " do

    before do
      visit ingredients_path
      @name="Onion"
      @unit="lbs"
      click_link "Add new"
      fill_in "Name", :with => @name
      fill_in "Unit", :with => @unit
      select @category.name , :from => "ingredient_ingredient_category_id"
      click_button "Save"

    end
    it { should have_content(@name)}
    it { should have_content(@unit)}

  end
  end
