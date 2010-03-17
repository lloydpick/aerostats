class AssetService < ActiveRecord::Base

  # Associations
  belongs_to :asset
  belongs_to :service
  has_many :asset_service_checks

end
