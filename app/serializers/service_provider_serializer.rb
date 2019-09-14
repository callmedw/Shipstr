class ServiceProviderSerializer < ActiveModel::Serializer
  attributes :id, :name, :rate_cents, :currency, :shipping_rates

  has_many :shipping_rates
end
