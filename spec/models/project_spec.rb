require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { Project.new(name: 'Test') }

  it { should validate_presence_of(:name) }
  it { should have_many(:members) }
end
