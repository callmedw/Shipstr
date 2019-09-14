class ShippingRateSerializer < ActiveModel::Serializer
  attributes :service_provider, :origin, :destination, :rate_cents, :currency, :common_amount_cents, :common_amount_currency

  belongs_to :service_provider
end
