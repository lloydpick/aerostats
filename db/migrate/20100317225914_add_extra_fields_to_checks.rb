class AddExtraFieldsToChecks < ActiveRecord::Migration
  def self.up
    add_column :checks, :name, :string
    add_column :checks, :description, :string
  end

  def self.down
    remove_column :checks, :name
    remove_column :checks, :description
  end
end
