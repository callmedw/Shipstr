class ShippingRate < ApplicationRecord
  belongs_to :service_providers
  validates_presence_of :rate_cents, :rate_currency, :origin, :destination, :service_provider_id, presence: true

  # gem rails-money
  monetize :rate_cents, with_model_currency: :currency
end
