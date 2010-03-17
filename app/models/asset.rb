class Asset < ActiveRecord::Base

  # Associations
  has_many :asset_services, :dependent => :destroy
  has_many :services, :through => :asset_services

  # Validations
  validates :name, :presence => true
  validates :ip_address, :presence => true
  validates :host_name, :presence => true

end
