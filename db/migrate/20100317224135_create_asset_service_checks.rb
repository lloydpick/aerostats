class CreateAssetServiceChecks < ActiveRecord::Migration
  def self.up
    create_table :asset_service_checks do |t|
      t.integer :asset_service_id
      t.integer :check_id
      t.boolean :enabled
      t.timestamps
    end
  end

  def self.down
    drop_table :asset_service_checks
  end
end
