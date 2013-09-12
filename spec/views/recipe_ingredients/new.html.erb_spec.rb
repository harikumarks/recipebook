require 'spec_helper'

describe "recipe_ingredients/new" do
  before(:each) do
    assign(:recipe_ingredient, stub_model(RecipeIngredient,
      :quantity => 1,
      :recipe_id => 1,
      :ingredient_id => 1
    ).as_new_record)
  end

  it "renders new recipe_ingredient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipe_ingredients_path, :method => "post" do
      assert_select "input#recipe_ingredient_quantity", :name => "recipe_ingredient[quantity]"
      assert_select "input#recipe_ingredient_recipe_id", :name => "recipe_ingredient[recipe_id]"
      assert_select "input#recipe_ingredient_ingredient_id", :name => "recipe_ingredient[ingredient_id]"
    end
  end
end
