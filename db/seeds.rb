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


Property.create(title: 'Hacker house in SOMA', description: 'Hack your way to startup riches with us!', street: '221 7th st', city: 'San Francisco', state: 'CA', zip_code: 94103, price: rand(500..3000))
Property.create(title: 'Conscious Vegan Community Living', description: 'Conscious community practicing emotional intelligence and equity sharing in the Castro', street: '120 Eureka St', city: 'San Francisco', state: 'CA', zip_code: 94114, price: rand(500..3000))
Property.create(title: 'Burner neoHippie Haven', description: 'Live on the edge of the future while remaining vintage in this Mission Dolores townhouse with 10 roommmates', street: '3143 16th St', city: 'San Francisco', state: 'CA', zip_code: 94103, price: rand(500..3000))

