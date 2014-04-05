require 'gachi_record_spec'
describe GachiRecord::Base do

  describe '.find' do
    context 'when record not find' do
      it { expect{GachiRecord::Base.find(1) }.to raise_error }
    end
  end

  describe '.find_by' do
    context 'when record not find' do
      it { expect{ 
    end
  end
end
