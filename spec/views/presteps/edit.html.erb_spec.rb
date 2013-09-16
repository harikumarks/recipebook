#require 'spec_helper'
#
#describe "presteps/edit" do
#  before(:each) do
#    @prestep = assign(:prestep, stub_model(Prestep,
#      :sequence => 1,
#      :activity => "MyString",
#      :time => 1,
#      :recipe_id => 1
#    ))
#  end
#
#  it "renders the edit prestep form" do
#    render
#
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "form", :action => presteps_path(@prestep), :method => "post" do
#      assert_select "input#prestep_sequence", :name => "prestep[sequence]"
#      assert_select "input#prestep_activity", :name => "prestep[activity]"
#      assert_select "input#prestep_time", :name => "prestep[time]"
#      assert_select "input#prestep_recipe_id", :name => "prestep[recipe_id]"
#    end
#  end
#end
