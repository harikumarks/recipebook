#require 'spec_helper'
#
#describe "recipe_ingredients/index" do
#  before(:each) do
#    assign(:recipe_ingredients, [
#      stub_model(RecipeIngredient,
#        :quantity => 1,
#        :recipe_id => 2,
#        :ingredient_id => 3
#      ),
#      stub_model(RecipeIngredient,
#        :quantity => 1,
#        :recipe_id => 2,
#        :ingredient_id => 3
#      )
#    ])
#  end
#
#  it "renders a list of recipe_ingredients" do
#    render
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "tr>td", :text => 1.to_s, :count => 2
#    assert_select "tr>td", :text => 2.to_s, :count => 2
#    assert_select "tr>td", :text => 3.to_s, :count => 2
#  end
#end
