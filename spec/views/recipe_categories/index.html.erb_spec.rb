#require 'spec_helper'
#
#describe "recipe_categories/index" do
#  before(:each) do
#    assign(:recipe_categories, [
#      stub_model(RecipeCategory,
#        :name => "Name"
#      ),
#      stub_model(RecipeCategory,
#        :name => "Name"
#      )
#    ])
#  end
#
#  it "renders a list of recipe_categories" do
#    render
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "tr>td", :text => "Name".to_s, :count => 2
#  end
#end
