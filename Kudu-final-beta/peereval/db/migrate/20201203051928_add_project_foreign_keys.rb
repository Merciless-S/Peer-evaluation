class AddProjectForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :project, index:true
  end
end
