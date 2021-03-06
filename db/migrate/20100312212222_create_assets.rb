class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :name
      t.string :ip_address
      t.string :host_name
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
