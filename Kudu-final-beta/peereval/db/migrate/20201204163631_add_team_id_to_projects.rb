class AddTeamIdToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :team_id, :integer
    add_index :projects, :team_id
  end
end
