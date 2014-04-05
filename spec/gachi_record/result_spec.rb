require 'spec_helper'

describe GachiRecord::Result::Behavior do
  
  subject(:dummy) { {hoge: 2}.extend(GachiRecord::Result::Behavior) }
  it { expect(dummy.hoge).to eq 2 }

  it { expect { dummy.fuga }.to raise_error { NoMethodError } }

end
