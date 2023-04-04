class Project < ApplicationRecord
  has_many :project_members
  has_many :members, through: :project_members
  validates_presence_of :name
end
