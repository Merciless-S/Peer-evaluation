class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :to_user
      t.string :from_user
      t.text :content
      t.integer :score

      t.timestamps
    end
  end
end
