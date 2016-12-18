FactoryGirl.define do
  factory :user do
    email "MyString"
    password_digest "MyString"
    name "MyString"
    is_admin false
    role "MyString"
    activation_code "MyString"
  end
end
