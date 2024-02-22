FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    password { "0123456" }
    sequence(:email) { |n| "user-#{n}@queijos.com" }
  end
end
