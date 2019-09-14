class AddCurrencyToServiceProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :service_providers, :currency, :string
  end
end
