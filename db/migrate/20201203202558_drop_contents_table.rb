class DropContentsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :contents
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
