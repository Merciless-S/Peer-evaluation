class AddProjForeignKeys < ActiveRecord::Migration[6.0]
    def change
      add_reference :comments, :project, index:true
    end
  end