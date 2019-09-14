class ServiceProvider < ApplicationRecord
  belongs_to :service_providers
  validates_presence_of :name, :flat_rate_cents, :flat_rate_currency


end
