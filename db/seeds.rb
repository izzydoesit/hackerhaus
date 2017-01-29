# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# title, description, city_name, price

titles = ['Bed with a view', 'Conscious community living', 'LGBTQ living in SF', 'Vegan Ohm house', 'Hackers by the Bay', 'Big Easy City Living', 'One spot open for friendly conscious soul', 'Startup house looking for 5th person', 'Insanely great deal in the Bay', 'Hack your way to Silicon Valley heaven!', 'One spot open for the right intentions']
cities = ['SOMA', 'Mission District', 'Richmond', 'The Castro', 'North Beach']
descriptions = ['Luxury penthouse overlooking the river', 'Craftsman townhouse with beautiful detail', 'Quaint quiet house near the park, great for dogs', 'Middle of downtown, filled with nightlife and plenty of shops nearby', 'Tucked away on a side street in a busy corner of town. Best of both worlds.', 'Conscious community practicing emotional intelligence and equity sharing', 'House with a garden and a great set of folks!', 'Incredible new startup incubator a la Silicon Valley!!']

50.times do
  Property.create(title: titles.sample, description: descriptions.sample, city_name: cities.sample, price: rand(500..3000))
end