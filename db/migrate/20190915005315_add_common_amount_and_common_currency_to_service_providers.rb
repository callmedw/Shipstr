class AddCommonAmountAndCommonCurrencyToServiceProviders < ActiveRecord::Migration[5.1]
  def change
    add_monetize :service_providers, :common_amount
    add_monetize :service_providers, :common_amount_currency
  end
end
