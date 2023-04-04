class AddUniquenessToTeamMember < ActiveRecord::Migration[7.0]
  def change
    add_index :team_members, [:team_id, :member_id], unique: true
  end
end
