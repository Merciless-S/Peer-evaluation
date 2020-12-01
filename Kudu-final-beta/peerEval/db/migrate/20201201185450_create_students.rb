class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.integer :buckid
      t.integer :groupNum

      t.timestamps
    end
  end
end
