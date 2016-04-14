FactoryGirl.define do
  factory :property do
    sequence(:title) { |i| "Apartment #{i}"}
    price "2000000"
    description "Apartment description"
    city_name "Default City Name"

    trait :madison do
    	description "Great butler service. Doorman. Elevator. Gym. Roofdeck. Pets OK, Steps to Madison Square Park, Union Square, and great shopping and restaurants."
    end

    trait :five_star_hotel do
    	description "Fabulous bright and suny Cipriani Penthouse. Butler service. Five Star Hotel Service in one of our most luxurious buildings in the Financial District."
    end

    trait :ny do
    	city_name "New York"
    end

    trait :la do
    	city_name "Los Angeles"
    end

  end
end
