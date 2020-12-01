class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :grader
      t.integer :teammate
      t.integer :projectNum
      t.integer :score
      t.string :comments

      t.timestamps
    end
  end
end
