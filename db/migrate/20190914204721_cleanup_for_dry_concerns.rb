class CleanupForDryConcerns < ActiveRecord::Migration[5.1]
  def change
    remove_column :shipping_rates, :rate_currency, :integer
    remove_column :service_providers, :rate_currency, :integer
  end
end
