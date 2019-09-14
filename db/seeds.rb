require 'csv'

csv_text = File.read(Rails.root.join('lib/data/rate_data.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  s = ShippingRate.new
  s.rate_cents = row["rate"]
  s.rate_currency = row["currency"]
  s.origin = row["origin"]
  s.destination = row["destination"]
  s.service_provider_id = row["shipping company id"]

  s.save
end

puts "there are now #{ShippingRate.count} rows in the shipping rate table"


csv_text = File.read(Rails.root.join('lib/data/service_provider_data.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  s = ServiceProvider.new
  s.id = row['id']
  s.name = row["name"]
  s.flat_rate_cents = row["flat shipping rate"]
  s.flat_rate_currency = row["currency"]

  s.save
end

puts "there are now #{ServiceProvider.count} rows in the service provider table"
