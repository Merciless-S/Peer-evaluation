class RemoveUserFkFromProject < ActiveRecord::Migration[6.0]
  def change
    if(foreign_key_exists?(:users, :projects))
      remove_foreign_key :user, :projects
    end
  end
end
