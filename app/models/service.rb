class Service < ActiveRecord::Base

  # Associations
  has_many :asset_services
  has_many :assets, :through => :asset_services

end
