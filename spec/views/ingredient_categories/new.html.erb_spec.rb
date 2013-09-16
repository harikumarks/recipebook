#require 'spec_helper'
#
#describe "ingredient_categories/new" do
#  before(:each) do
#    assign(:ingredient_category, stub_model(IngredientCategory,
#      :name => "MyString"
#    ).as_new_record)
#  end
#
#  it "renders new ingredient_category form" do
#    render
#
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "form", :action => ingredient_categories_path, :method => "post" do
#      assert_select "input#ingredient_category_name", :name => "ingredient_category[name]"
#    end
#  end
#end
