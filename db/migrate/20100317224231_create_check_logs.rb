class CreateCheckLogs < ActiveRecord::Migration
  def self.up
    create_table :check_logs do |t|
      t.integer :check_id
      t.text :run_output
      t.timestamps
    end
  end

  def self.down
    drop_table :check_logs
  end
end
