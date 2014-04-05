require 'spec_helper'

describe GachiRecord::DynamicFinder do

  class DummyClass
    include GachiRecord::DynamicFinder
  end

  describe '.build_condition' do
    subject(:sql) { DummyClass.build_condition(condition) }
    context 'when build single condiction' do
      let(:condition) do
        { id: 1 }
      end
      it { expect(sql).to eql " WHERE id = '1'" }
    end
    context 'when build multiple conditions' do
      let(:condition) do
        { id: 1, name: "hoge" }
      end
      it { expect(sql).to eql " WHERE id = '1' AND name = 'hoge'" }
    end
  end

  describe ".find" do
    subject(:find) { DummyClass.find(id) }
    context "when id is not set" do
      let(:id) { nil }

      it { expect { find }.to raise_error { ArgumentError } }
    end

    context "when record not found " do
      let(:id) { 100 }

      it { expect { find }.to raise_error { GachiRecord::RecordNotFound } }
    end
  end

  describe ".find_by" do
    subject(:find_by) { DummyClass.find(condition) }

    context "conditions is nil" do
      let(:condition) { nil }

      it { expect { find }.to raise_error { ArgumentError } }
    end

    context "condition is empty hash" do
      let(:condition) { {} }

      it { expect { find }.to raise_error { ArgumentError } }
    end

    context "when record not found " do
      let(:condition) {
         { id: "hoge", name: "hoge" }
      }

      it { expect { find }.to raise_error { GachiRecord::RecordNotFound } }
    end

  end

end
