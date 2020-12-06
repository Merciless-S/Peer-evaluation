class AddProjectIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :project_id, :integer
    add_index :comments, :project_id
    add_column :comments, :user_id, :integer
    add_index :comments, :user_id
  end
end
