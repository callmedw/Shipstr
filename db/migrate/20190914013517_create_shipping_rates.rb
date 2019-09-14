class CreateShippingRates < ActiveRecord::Migration[5.1]
  def change
    create_table :shipping_rates do |t|
      t.monetize :rate
      t.string :currency
      t.string :origin
      t.string :destination
      t.monetize :common_amount
      t.integer :service_provider_id, foreign_key: true

      t.timestamps
    end
  end
end
