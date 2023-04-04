class Team < ApplicationRecord
  has_many :team_members
  has_many :members, through: :team_members
  validates_presence_of :name
end
