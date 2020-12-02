require 'faker'

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
puts "Creating fake clients... "

50.times do |i|
  client = Client.create!(
      firstname: Faker::Name.first_name,
      lastname: Faker::Name.last_name,
      phone_number: Faker::PhoneNumber.phone_number_with_country_code,
      email: Faker::Internet.email(domain: 'gmail'),
      address: Faker::Address.full_address,
      birthday: Faker::Date.birthday(min_age: 18, max_age: 65)
  )
  puts "Creating #{i + 1} - #{client.firstname}"
end

puts "Done"
