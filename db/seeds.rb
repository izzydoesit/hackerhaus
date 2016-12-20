# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# title, description, city_name, price

titles = ['Bed with a view', 'Conscious community living', 'LGBTQ living in SF', 'Vegan Ohm house', 'Hackers by the Bay']
cities = ['SOMA', 'Mission District', 'Richmond', 'The Castro', 'North Beach']
descriptions = ['Luxury penthouse overlooking the river', 'Craftsman townhouse with beautiful detail', 'Quaint quiet house near the park, great for dogs', 'Middle of downtown, filled with nightlife and plenty of shops nearby', 'Tucked away on a side street in a busy corner of town. Best of both worlds.']

i = 0
while i < titles.length do
  Property.create(title: titles.sample, description: descriptions.sample, city_name: cities.sample, price: rand(500..3000))
  i += 1
end

