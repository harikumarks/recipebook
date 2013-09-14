require 'spec_helper'

describe Prestep do

  before do
    @prestep = FactoryGirl.build(:prestep)

  end

  subject do
    @prestep
  end
  it { should be_valid}

  describe "should not be valid if sequence is blank" do
    before {@prestep.sequence=""  }
    it { should_not be_valid}

  end

  describe "should not be valid if activity is blank" do
    before {@prestep.activity=""  }
    it { should_not be_valid}

  end

  describe "should not be valid if time is blank" do
    before {@prestep.time=""  }
    it { should_not be_valid}

  end

end
