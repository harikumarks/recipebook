require 'spec_helper'

describe Step do

  before do
    @rstep = FactoryGirl.create(:step)

  end

  subject do
    @rstep
  end
  it { should be_valid}

  describe "should not be valid if sequence is blank" do
    before {@rstep.sequence=""  }
    it { should_not be_valid}

  end

  describe "should not be valid if activity is blank" do
    before {@rstep.activity=""  }
    it { should_not be_valid}

  end

  describe "should not be valid if time is blank" do
    before {@rstep.time=""  }
    it { should_not be_valid}

  end
end
