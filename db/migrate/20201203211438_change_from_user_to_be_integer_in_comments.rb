class ChangeFromUserToBeIntegerInComments < ActiveRecord::Migration[6.0]
  def change
    change_column :comments, :from_user, :integer
    change_column :comments, :to_user, :integer
  end
end
