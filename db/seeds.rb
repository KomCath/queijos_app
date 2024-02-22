puts "\n🌱 Seeding..."

puts "\nNow seeding Products 🧀\n"

FactoryBot.create_list(:product, 10)

puts "\nFinished Products 🌳\n"

puts "\nNow seeding Users 🧌\n"

FactoryBot.create_list(:user, 5, admin: false)

FactoryBot.create(:user, admin: true)

puts "\nFinished Users 🌳\n"

puts "\nDone!🤙"
