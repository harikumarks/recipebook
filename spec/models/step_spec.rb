require 'spec_helper'

describe Step do

  before do
    @step = FactoryGirl.build(:step)

  end

  subject do
    @step
  end
  it { should be_valid}

  describe "should not be valid if sequence is blank" do
    before {@step.sequence=""  }
    it { should_not be_valid}

  end

  describe "should not be valid if activity is blank" do
    before {@step.activity=""  }
    it { should_not be_valid}

  end

  describe "should not be valid if time is blank" do
    before {@step.time=""  }
    it { should_not be_valid}

  end
end
