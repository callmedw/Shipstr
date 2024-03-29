class CreateServiceProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :service_providers do |t|
      t.string :name
      t.monetize :rate
      t.string :currency

      t.timestamps
    end
  end
end
