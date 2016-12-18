FactoryGirl.define do
  factory :user do
    email "john@example.com"
    password "secret"
    name "John Doe"

    trait :no_agent do
      role "no_agent"
    end

    trait :agent do
      role "agent"
    end

    trait :admin do
      is_admin true
    end
    
  end
end
