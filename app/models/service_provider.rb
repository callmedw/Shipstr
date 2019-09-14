class ServiceProvider < ApplicationRecord
  has_many :shipping_rates
  validates_presence_of :name, :flat_rate_cents, :currency

  # gem money-rails
  monetize :flat_rate_cents, with_model_currency: :currency
end
