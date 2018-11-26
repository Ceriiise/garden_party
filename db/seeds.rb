puts "Destroying all users"
User.destroy_all

puts "Seeding users"

manon = User.create!(email: 'manoncharron8@gmail.com', password: '123456')
francois = User.create!(email: 'f.hameau@gmail.com', password: '234567')
philippine = User.create!(email: 'alyssa_phi@hotmail.com', password: '345678')
antoine = User.create!(email: 'antoine.fourgous1997@gmail.com', password: '456789')

puts "Destroying all gardens"
Garden.destroy_all

puts "Seeding gardens"
manon_garden = Garden.create(
  address: '71 quai de la Seine, 75019 Paris',
  name: 'Paradise in Paris',
  description: 'Wonderful swimming pool near Canal Saint Martin',
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true
  )

philippine_garden = Garden.create(
  address: '16 villa Gaudelet, 75011 Paris',
  name: 'Beautiful loft',
  description: 'Nice barbecue in the heart of Menilmontant',
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

puts "Destroying all bookings"

Booking.destroy_all

puts "Seeding bookings"
first_booking = Booking.create(
  start_date: Date.new,
  end_date: Date.new + 2,
  user: antoine,
  garden: manon_garden,
  total_price: 300,
  nbguests: 3
  )

second_booking = Booking.create(
  start_date: Date.new,
  end_date: Date.new + 1,
  user: francois,
  garden: philippine_garden,
  total_price: 100,
  nbguests: 2
  )

puts "all done !"
