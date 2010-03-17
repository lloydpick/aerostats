class CreateChecks < ActiveRecord::Migration
  def self.up
    create_table :checks do |t|
      t.integer :service_id
      t.timestamps
    end
  end

  def self.down
    drop_table :checks
  end
end
