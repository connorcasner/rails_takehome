require 'rails_helper'

RSpec.describe Team, type: :model do
  subject { Team.new(name: 'Test') }

  it { should validate_presence_of(:name) }
  it { should have_many(:members) }
end
