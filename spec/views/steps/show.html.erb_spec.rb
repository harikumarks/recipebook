require 'spec_helper'

describe "steps/show" do
  before(:each) do
    @step = assign(:step, stub_model(Step,
      :sequence => 1,
      :activity => "Activity",
      :time => 2,
      :recipe_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Activity/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
