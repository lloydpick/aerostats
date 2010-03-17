class RenameColumnInCheckLogs < ActiveRecord::Migration
  def self.up
    rename_column :check_logs, :check_id, :asset_service_check_id
  end

  def self.down
    rename_column :check_logs, :asset_service_check_id, :check_id
  end
end
