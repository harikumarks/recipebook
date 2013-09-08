require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have content Home Recipe Book" do
      visit '/home'
      expect(page).to have_content('Home Recipe Book')
    end
    it "should have title Home Recipe Book" do
      visit '/home'
      expect(page).to have_title('Home Recipe Book')
    end 
  
  end
  describe "Login page" do
    it "should have content Sign in" do
      visit '/login'
      expect(page).to have_content('Sign in')
    end
    it "should have title Home Recipe Book -> Sign in" do
      visit '/login'
      expect(page).to have_title('Home Recipe Book -> Sign in')
    end
  end

   describe "Register page" do
    it "should have content Register" do
      visit '/register'
      expect(page).to have_content('Register')
    end
    it "should have title Home Recipe Book -> Register" do
      visit '/register'
      expect(page).to have_title('Home Recipe Book -> Register')
    end
  end

end
