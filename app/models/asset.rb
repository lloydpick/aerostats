class Asset < ActiveRecord::Base

  # Associations
  has_many :asset_services
  has_many :services, :through => :asset_services

end
