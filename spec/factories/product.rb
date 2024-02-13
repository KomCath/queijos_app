FactoryBot.define do
  factory :product do
    name { Faker::Food.dish }
    description { Faker::Food.description }
    price_cents { rand(1..3000) }
  end
end
