class AssetServiceCheck < ActiveRecord::Base

  # Associations
  belongs_to :asset_service
  belongs_to :check
  has_many :check_logs, :dependent => :destroy

end
