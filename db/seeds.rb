puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

def generate_restaurant
  category_list = %w[chinese italian japanese french belgian]
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.phone_number_with_country_code
  category = category_list.sample
  Restaurant.create(name:, address:, phone_number:, category:)
end

10.times {
  generate_restaurant
}

puts "Finished seed data creation"
