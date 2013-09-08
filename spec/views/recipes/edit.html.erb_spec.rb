require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :description => "MyString",
      :quantity => 1,
      :user_id => 1,
      :recipe_category_id => 1
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path(@recipe), :method => "post" do
      assert_select "input#recipe_name", :name => "recipe[name]"
      assert_select "input#recipe_description", :name => "recipe[description]"
      assert_select "input#recipe_quantity", :name => "recipe[quantity]"
      assert_select "input#recipe_user_id", :name => "recipe[user_id]"
      assert_select "input#recipe_recipe_category_id", :name => "recipe[recipe_category_id]"
    end
  end
end
