require 'spec_helper'

describe GachiRecord::Connection do
  subject(:instance) { Connection.instance }
  describe '.instance' do
    pending 'no spec'
  end

  describe '.execute' do
    it { instance.execute }.to raise_error }
  end
end
