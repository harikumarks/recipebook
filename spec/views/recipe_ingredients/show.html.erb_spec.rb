require 'spec_helper'

describe "recipe_ingredients/show" do
  before(:each) do
    @recipe_ingredient = assign(:recipe_ingredient, stub_model(RecipeIngredient,
      :quantity => 1,
      :recipe_id => 2,
      :ingredient_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
