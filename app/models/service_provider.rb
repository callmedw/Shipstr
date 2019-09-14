class ServiceProvider < ApplicationRecord
  belongs_to :service_providers
  validates_presence_of :name, :flat_rate, :currency


end
