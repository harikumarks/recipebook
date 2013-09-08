require 'spec_helper'

describe "presteps/index" do
  before(:each) do
    assign(:presteps, [
      stub_model(Prestep,
        :sequence => 1,
        :activity => "Activity",
        :time => 2,
        :recipe_id => 3
      ),
      stub_model(Prestep,
        :sequence => 1,
        :activity => "Activity",
        :time => 2,
        :recipe_id => 3
      )
    ])
  end

  it "renders a list of presteps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Activity".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
