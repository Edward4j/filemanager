class AddNameToFolders < ActiveRecord::Migration
  def change
    add_column :folders, :name, :string
    add_column :folders, :user_id, :integer
  end
end
