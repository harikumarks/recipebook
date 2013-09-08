require 'spec_helper'

describe "steps/new" do
  before(:each) do
    assign(:step, stub_model(Step,
      :sequence => 1,
      :activity => "MyString",
      :time => 1,
      :recipe_id => 1
    ).as_new_record)
  end

  it "renders new step form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => steps_path, :method => "post" do
      assert_select "input#step_sequence", :name => "step[sequence]"
      assert_select "input#step_activity", :name => "step[activity]"
      assert_select "input#step_time", :name => "step[time]"
      assert_select "input#step_recipe_id", :name => "step[recipe_id]"
    end
  end
end
