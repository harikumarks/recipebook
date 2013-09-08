require 'spec_helper'

describe "recipe_categories/edit" do
  before(:each) do
    @recipe_category = assign(:recipe_category, stub_model(RecipeCategory,
      :name => "MyString"
    ))
  end

  it "renders the edit recipe_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipe_categories_path(@recipe_category), :method => "post" do
      assert_select "input#recipe_category_name", :name => "recipe_category[name]"
    end
  end
end
