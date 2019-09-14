class ShippingRate < ApplicationRecord
  belongs_to :service_provider
  validates_presence_of :rate_cents, :currency, :origin, :destination, :service_provider_id, presence: true

  # gem rails-money
  monetize :rate_cents, with_model_currency: :currency
end
