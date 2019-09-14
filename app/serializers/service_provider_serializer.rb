class ServiceProviderSerializer < ActiveModel::Serializer
  attributes :id, :name, :flat_rate_cents, :currency, :shipping_rates

  has_many :shipping_rates
end
