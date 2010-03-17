class Check < ActiveRecord::Base

  # Associations
  belongs_to :service
  has_many :check_logs
  
end
