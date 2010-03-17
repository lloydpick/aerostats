class AssetServiceCheck < ActiveRecord::Base

  # Associations
  belongs_to :asset_service
  belongs_to :check

end
