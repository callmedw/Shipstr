class ServiceProvider < ApplicationRecord
  include CurrencyConverter

  has_many :shipping_rates
  validates_presence_of :name, :rate_cents, :currency

  # gem money-rails
  monetize :rate_cents, with_model_currency: :currency
end
