class RemoveSomeColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :token
    remove_column :users, :expires_at
  end
end
