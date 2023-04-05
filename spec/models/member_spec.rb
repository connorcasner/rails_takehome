require 'rails_helper'

RSpec.describe Member, type: :model do
  subject { Member.new(first_name: 'Test', last_name: 'Test') }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  context 'when there are no teams' do
    it 'is not valid' do
      described_class_object = described_class.new(first_name: 'test', last_name: 'test')
      described_class_object.teams = []
      expect(described_class_object).to_not be_valid
    end
  end
end
