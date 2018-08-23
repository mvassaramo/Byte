require 'csv'

#Prices

Price.create(name: "Feeling stingy")
Price.create(name: "Just got paid…yipeee!")
Price.create(name: "Who cares, I’m not paying!")

#area
Area.create(name: "North")
Area.create(name: "East")
Area.create(name: "South")
Area.create(name: "West")
Area.create(name: "Central")

#craving
Craving.create(name: "Superfood")
Craving.create(name: "Greasy Spoon")
Craving.create(name: "Boozy Brunch")
Craving.create(name: "Middle Eastern")
Craving.create(name: "Asiany Goodness")


#occasion
Occasion.create(name: "Patio Brunch")
Occasion.create(name: "Bday Brunch")
Occasion.create(name: "Family Outing")
Occasion.create(name: "Brunch Date")
Occasion.create(name: "Bottomless Brunch")
Occasion.create(name: "Casual")

# Restaurant.destroy_all

csv_text = File.read(Rails.root.join('db', 'seeds', 'restaurant_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Restaurant.new
  t.name = row['name']
  t.vibe = row['vibe']
  t.description = row['description']
  t.speciality = row['speciality']
  t.address = row['address']
  t.closest_tube_station = row['closest_tube_station']
  t.opening_hours = row['opening_hours']
  t.website_link = row['website_link']
  t.area_id = row['area_id']
  t.craving_id = row['craving_id']
  t.price_id = row['price_id']
  t.occasion_id = row['occasion_id']
  File.open("app/assets/images/#{t.name}.jpg") do |f|
    t.image = f
  end
  t.save
  puts "#{t.name} saved"
end
