class AddAncestryToFolder < ActiveRecord::Migration
  def self.up
<<<<<<< HEAD
    add_column :messages, :ancestry, :string
    add_index :messages, :ancestry
  end

  def self.down
    remove_index :messages, :ancestry
    remove_column :messages, :ancestry
=======
    add_column :folders, :ancestry, :string
    add_index :folders, :ancestry
  end

  def self.down
    remove_index :folders, :ancestry
    remove_column :folders, :ancestry
>>>>>>> 51fd3448e66c7187906451b264cc4f71892c942f
  end
end