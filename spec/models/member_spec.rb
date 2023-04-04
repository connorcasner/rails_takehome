require 'rails_helper'

RSpec.describe Member, type: :model do
  subject { Member.new(first_name: 'Test', last_name: 'Test') }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
end
