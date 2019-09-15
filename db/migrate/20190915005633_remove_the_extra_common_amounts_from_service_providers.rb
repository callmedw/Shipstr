class RemoveTheExtraCommonAmountsFromServiceProviders < ActiveRecord::Migration[5.1]
  def change
    remove_column :service_providers, :common_amount_currency_cents, :integer
    remove_column :service_providers, :common_amount_currency_currency, :string
  end
end
