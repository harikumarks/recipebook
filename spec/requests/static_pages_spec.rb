require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have content HomeRecipeBook" do
      visit '/static_pages/home'
      expect(page).to have_content('HomeRecipeBook')
    end
    it "should have title HomeRecipeBook" do
      visit '/static_pages/home'
      expect(page).to have_title('HomeRecipeBook')
    end 
  
  end
  describe "Login page" do
    it "should have content HomeRecipeBook" do
      visit '/static_pages/login'
      expect(page).to have_content('HomeRecipeBook')
    end
    it "should have title HomeRecipeBook" do
      visit '/static_pages/login'
      expect(page).to have_title('HomeRecipeBook')
    end
  end
end
