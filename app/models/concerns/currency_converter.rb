require 'active_support/concern'

module CurrencyConverter
  extend ActiveSupport::Concern

  included do
      before_save :convert_currency
      before_save :make_cents
    end

  def make_cents
    self.rate_cents = rate_cents * 100
  end

  def convert_currency
    self.common_amount_cents = rate.exchange_to("USD")
  end
end
