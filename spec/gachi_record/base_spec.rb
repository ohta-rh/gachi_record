require 'gachi_record_spec'
describe GachiRecord::Base do

  describe '.find' do
    it { expect{GachiRecord::Base.find(1) }.to raise_error }
  end
end
