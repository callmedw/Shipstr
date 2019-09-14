class CreateServiceProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :service_providers do |t|
      t.monetize :flat_rate
      t.string :currency

      t.timestamps
    end
  end
end
