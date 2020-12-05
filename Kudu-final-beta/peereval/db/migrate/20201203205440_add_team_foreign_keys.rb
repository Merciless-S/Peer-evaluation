class AddTeamForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :team, index:true
  end
end
