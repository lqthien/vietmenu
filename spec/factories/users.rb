FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "email#{n}@email.com" }
    password '12345678'
    password_confirmation '12345678'
    name Faker::Name.name
    sequence(:username) { |n| "username#{n}" }
    confirmed_at Time.now
  end
end