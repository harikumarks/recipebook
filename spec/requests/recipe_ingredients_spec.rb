require 'spec_helper'

describe "RecipeIngredients" do
  describe "GET /recipe_ingredients" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get recipe_ingredients_path
      response.status.should be(200)
    end
  end
end
