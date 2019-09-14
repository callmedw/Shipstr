class ServiceProviderSerializer < ActiveModel::Serializer
  attributes :name, :flat_rate_cents, :currency

  has_many :shipping_rates
end
