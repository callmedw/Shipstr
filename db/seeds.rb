require 'csv'

ServiceProvider.delete_all
ShippingRate.delete_all

CSV.foreach(Rails.root.join('lib/data/service_provider_data.csv'), headers: true) do |row|
  ServiceProvider.create!({
    id: row['id'].to_i,
    name: row['name'],
    rate_cents: row['flat shipping rate'].to_i,
    currency: row['currency']
  })
end

CSV.foreach(Rails.root.join('lib/data/rate_data.csv'), headers: true) do |row|
  ShippingRate.create!({
    rate_cents: row["rate"],
    currency: row["currency"],
    origin: row["origin"],
    destination: row["destination"],
    service_provider_id: row["shipping company id"].to_i
  })
end

p "#{ShippingRate.count} Shipping Rates and #{ServiceProvider.count} Service Providers added!"
