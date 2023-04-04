class AddUniquenessToProjectMember < ActiveRecord::Migration[7.0]
  def change
    add_index :project_members, [:project_id, :member_id], unique: true
  end
end
