class ShippingRate < ApplicationRecord
  belongs_to :service_providers
  validates_presence_of :rate_cents, :rate_currency, :origin, :destination, :service_provider_id, presence: true
end
