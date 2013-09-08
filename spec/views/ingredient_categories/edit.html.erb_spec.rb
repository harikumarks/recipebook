require 'spec_helper'

describe "ingredient_categories/edit" do
  before(:each) do
    @ingredient_category = assign(:ingredient_category, stub_model(IngredientCategory,
      :name => "MyString"
    ))
  end

  it "renders the edit ingredient_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ingredient_categories_path(@ingredient_category), :method => "post" do
      assert_select "input#ingredient_category_name", :name => "ingredient_category[name]"
    end
  end
end
