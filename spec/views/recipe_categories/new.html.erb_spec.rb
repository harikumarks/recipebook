require 'spec_helper'

describe "recipe_categories/new" do
  before(:each) do
    assign(:recipe_category, stub_model(RecipeCategory,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new recipe_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipe_categories_path, :method => "post" do
      assert_select "input#recipe_category_name", :name => "recipe_category[name]"
    end
  end
end
