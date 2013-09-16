#require 'spec_helper'
#
#describe "ingredients/new" do
#  before(:each) do
#    assign(:ingredient, stub_model(Ingredient,
#      :name => "MyString",
#      :unit => "MyString",
#      :recipe_id => 1,
#      :ingredient_category_id => 1
#    ).as_new_record)
#  end
#
#  it "renders new ingredient form" do
#    render
#
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "form", :action => ingredients_path, :method => "post" do
#      assert_select "input#ingredient_name", :name => "ingredient[name]"
#      assert_select "input#ingredient_unit", :name => "ingredient[unit]"
#      assert_select "input#ingredient_recipe_id", :name => "ingredient[recipe_id]"
#      assert_select "input#ingredient_ingredient_category_id", :name => "ingredient[ingredient_category_id]"
#    end
#  end
#end
##