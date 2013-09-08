require 'spec_helper'

describe User do
    before { @user= User.new(name: "testuser",email: "testuser@example.com", password: "abc123", password_confirmation: "abc123") }
    subject { @user }
    it { should respond_to(:name) }
    it { should respond_to(:email) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
    it { should be_valid }
   

    describe "when name is not present" do
      before { @user.name=" " }
      it { should_not be_valid }
    end
 
    describe "when name is too long" do
      before { @user.name="a" * 51 }
      it { should_not be_valid }
    end

    describe "when email is not present" do
      before { @user.email=" " }
      it { should_not be_valid }
    end

    describe "when email format is invalid " do
      addresses= %w[user@foo,com user_at_foo.org example.user@foo. foo@foo_baz.com foo@bar+baz.com]
      addresses.each do |address|
        before { @user.email = address }
        it {should_not be_valid }
      end
    end
   
    describe "when email format is valid " do
      addresses= %w[user@foo.com user_asd@foo.org example.user@foo.org foo@foobaz.com foo_b@barbaz.com]
      addresses.each do |address|
        before { @user.email = address }
        it {should be_valid }
      end
    end
  
   describe "when email address is already taken " do
        before do
		user_with_same_email=@user.dup
		user_with_same_email.email=@user.email.upcase
                user_with_same_email.save
        end
        it {should_not be_valid }
    end
    describe " when password is not present" do
       before { @user.password = @user.password_confirmation= " " }
       it { should_not be_valid}
    end 
    describe " when password confirmation does not match password " do
       before { @user.password_confirmation="mismatch" }
      it { should_not be_valid }
    end

 
    describe "return value of authenticate method" do 
     before { @user.save }
     let(:found_user) { User.find_by_email(@user.email) }
      
     describe "with valid passwd" do
       it { should == found_user.authenticate(@user.password)}
     end 
     
     describe "with invalid passwd" do
       let(:user_for_invalid_password) { found_user.authenticate("invalid") }
       it { should_not == user_for_invalid_password }
        specify { user_for_invalid_password.should be_false }
     end 

    end

end
