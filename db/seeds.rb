puts "Destroying all users"
User.destroy_all

puts "Seeding users"
manon = User.create!(first_name: 'Manon', last_name: 'Charron', email: 'manoncharron8@gmail.com', password: '123456')
francois = User.create!(first_name: 'François', last_name: 'Hameau', email: 'f.hameau@gmail.com', password: '234567')
philippine = User.create!(first_name: 'Philippine', last_name: 'Berton', email: 'alyssa_phi@hotmail.com', password: '345678')
antoine = User.create!(first_name: 'Antoine', last_name: 'Fourgous', email: 'antoine.fourgous1997@gmail.com', password: '456789')

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

Booking.destroy_all

puts "Seeding bookings"
first_booking = Booking.create(
  start_date: Date.new,
  end_date: Date.new + 2,
  user: antoine,
  garden: manon_garden,
  nbguests: 3,
  total_price: 300
  )

second_booking = Booking.create(
  start_date: Date.new,
  end_date: Date.new + 1,
  user: francois,
  garden: philippine_garden,
  nbguests: 2,
  total_price: 100
  )

puts "all done !"
