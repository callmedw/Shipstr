class ShippingRate < ApplicationRecord
  belongs_to :service_providers
  validates_presence_of :rate, :currency, :origin, :destination, :service_provider_id, presence: true
end
