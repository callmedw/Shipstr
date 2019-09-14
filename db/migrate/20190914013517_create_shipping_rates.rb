class CreateShippingRates < ActiveRecord::Migration[5.1]
  def change
    create_table :shipping_rates do |t|
      t.monetize :rate
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
