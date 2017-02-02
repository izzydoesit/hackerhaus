# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Property.create(title: 'The Smith', description: 'Hack your way to startup riches with us in SOMA near all the best tech startups!', street: '221 7th st', city: 'San Francisco', state: 'CA', zip_code: 94103, price: rand(500..3000), image: File.new("app/assets/images/theSmith.jpg"))

Property.create(title: 'The Panoramic', description: 'This high-status new construction in SOMA will have you thanking the tech gods!', street: '1321 Mission St', city: 'San Francisco', state: 'CA', zip_code: 94103, price: rand(500..3000), image: File.new("app/assets/images/panoramicView.jpg"))

Property.create(title: 'Negeva', description: 'Conscious community practicing emotional intelligence, vegan lifestyle and equity sharing in the Castro', street: '120 Eureka St', city: 'San Francisco', state: 'CA', zip_code: 94114, price: rand(500..3000), image: File.new("app/assets/images/rainbowHouse.jpg"))

Property.create(title: 'Opposite Pole', description: 'Incredible view from this Castro adjacent house on Twin Peaks', street: '45 Burnett Ave', city: 'San Francisco', state: 'CA', zip_code: 94131, price: rand(500..3000), image: File.new("app/assets/images/xmasHouse.jpg"))

Property.create(title: 'Casa Melissa', description: 'Homely boarding house in North Beach with dinner get-togethers and an active social calendar', street: '615 Union St', city: 'San Francisco', state: 'CA', zip_code: 94133, price: rand(500..3000), image: File.new("app/assets/images/purpleHouse.jpg"))

Property.create(title: 'The Dream', description: 'Incredible North Beach palace with view of the bay AND the city.  We\'re all about finding good pizza, mostly.', street: '250 Lombard St', city: 'San Francisco', state: 'CA', zip_code: 94111, price: rand(500..3000), image: File.new("app/assets/images/coitTower.jpg"))

Property.create(title: 'Mello Yello', description: 'Take it easy in this relaxing, quiet Richmond house with plenty of parking and easy access to muni/BART', street: '4330 Geary St', city: 'San Francisco', state: 'CA', zip_code: 94131, price: rand(500..3000), image: File.new("app/assets/images/yellow.jpg"))

Property.create(title: 'Who Knows?', description: 'The beach is just a few steps away in this modern Richmond hacker house for the curious and uninitiated...', street: '4508 Balboa St', city: 'San Francisco', state: 'CA', zip_code: 94121, price: rand(500..3000), image: File.new("app/assets/images/beachHouse.jpg"))

Property.create(title: 'House Albion', description: 'Live on the edge of the future while remaining vintage amongst burner neo-hippies in this Mission Dolores townhouse with 10 roommmates', street: '3143 16th St', city: 'San Francisco', state: 'CA', zip_code: 94103, price: rand(500..3000), image: File.new("app/assets/images/albion.jpg"))

Property.create(title: 'El Capitan', description: 'Mission central, single units available for those who want to be the captain of their own vessel. Near great restaurants and nightlife', street: '2361 Mission St', city: 'San Francisco', state: 'CA', zip_code: 94110, price: rand(500..3000), image: File.new("app/assets/images/elCapitan.jpg"))

Property.create(title: 'Balmoral House', description: 'Classic newly renovated building in Lower Nob/Tenderloin with dumbwaiters and copper trims', street: '1010 Bush St', city: 'San Francisco', state: 'CA', zip_code: 94109, price: rand(500..3000), image: File.new("app/assets/images/balmoral.jpg"))

Property.create(title: 'The Yale', description: 'Vintage design in Tenderloin/Lower Nob area with private bathroom included in your unit', street: '633 Larkin St', city: 'San Francisco', state: 'CA', zip_code: 94109, price: rand(500..3000), image: File.new("app/assets/images/yale.jpg"))

