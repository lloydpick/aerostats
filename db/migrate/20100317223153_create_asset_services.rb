class CreateAssetServices < ActiveRecord::Migration
  def self.up
    create_table :asset_services do |t|
      t.integer :asset_id
      t.integer :service_id
      t.boolean :enabled
      t.timestamps
    end
  end

  def self.down
    drop_table :asset_services
  end
end
