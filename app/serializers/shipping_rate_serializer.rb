class ShippingRateSerializer < ActiveModel::Serializer
  attributes :id, :origin, :destination, :rate_cents, :currency, :common_amount_cents, :common_amount_currency

  belongs_to :service_provider
end
