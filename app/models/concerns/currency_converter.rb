require 'active_support/concern'

module CurrencyConverter
  extend ActiveSupport::Concern

  included do
      before_save :convert_to_common_currency
    end

  def convert_to_common_currency
    self.rate_cents = rate.exchange_to("USD")
  end

end
