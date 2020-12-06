class AddProjectForeignKeys1 < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :project, index:true
  end
end
