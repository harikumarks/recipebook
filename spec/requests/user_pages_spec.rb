require 'spec_helper'

describe "UserPages" do
  subject { page }
  describe "Sign up page" do
      before {visit signup_path }
      it { should_have selector('h1', text:'Sign up') }
       it { should_have selector('title', text: full_title('Sign up')) }
  end
  
  describe "Edit profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end

   before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

  
  describe "with valid information" do
   before do
        fill_in "Name",         with: "test User"
        fill_in "Email",        with: "testuser@example.com"
        fill_in "Password",     with: "test123"
        fill_in "Confirmation", with: "test123"
  end

   it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
   end
  end
  
end