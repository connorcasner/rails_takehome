class Member < ApplicationRecord
  validates_presence_of :first_name, :last_name
  has_many :team_members
  has_many :teams, through: :team_members

  has_many :project_members
  has_many :projects, through: :project_members
  validates :teams, length: { minimum: 1 }
  accepts_nested_attributes_for :teams, reject_if: ->(attributes){ attributes['id'].blank? }
  accepts_nested_attributes_for :projects, reject_if: ->(attributes){ attributes['id'].blank? }

  def full_name
    "#{first_name} #{last_name}"
  end
end
