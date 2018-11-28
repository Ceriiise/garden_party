puts "Destroying all users"
User.destroy_all

puts "Seeding users"
manon = User.create!(first_name: 'Manon', last_name: 'Charron', email: 'manoncharron8@gmail.com', password: '123456')
francois = User.create!(first_name: 'François', last_name: 'Hameau', email: 'f.hameau@gmail.com', password: '234567')
philippine = User.create!(first_name: 'Philippine', last_name: 'Berton', email: 'alyssa_phi@hotmail.com', password: '345678')
antoine = User.create!(first_name: 'Antoine', last_name: 'Fourgous', email: 'antoine.fourgous1997@gmail.com', password: '456789')


puts "Destroying all gardens"
Garden.destroy_all


puts "Seeding gardens"
manon_garden = Garden.create(
  address: '20 rue des Abbesses, 75018 Paris',
  name: 'Nature in the heart of Paris',
  description: 'Cosy garden in Montmartre, perfect to enjoy a picnic with your friends',
  price: 80,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: false,
  barbecue: true
  )

manon_garden.remote_photo_url = 'https://images.unsplash.com/photo-1519671619280-fd2b53b38ec2?ixlib=rb-0.3.5&s=07f186f7e3890c44295792902b78a246&auto=format&fit=crop&w=750&q=80'
manon_garden.save

philippine_garden = Garden.create(
  address: '120 avenue de Paris, 75012 Paris',
  name: 'Huge house near Vincennes',
  description: 'A little forest perfect for big family dinners ',
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true,
  swimming_pool: false
  )

philippine_garden.remote_photo_url = 'https://images.unsplash.com/photo-1425421598808-4a22ce59cc97?ixlib=rb-0.3.5&s=d719ff26022e3e1d449aeab0a120586f&auto=format&fit=crop&w=750&q=80'
philippine_garden.save

antoine_garden = Garden.create(
  address: '16 villa Gaudelet, 75011 Paris',
  name: 'Amazing swimming pool in Villa Gaudelet',
  description: 'Come and enjoy the best pool parties near Menilmontant',
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true
  )

antoine_garden.remote_photo_url = 'https://images.unsplash.com/photo-1508026990909-1a59beab3320?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=738a6cb74f995d4a0ccfa63d5fc3df0d&auto=format&fit=crop&w=667&q=80'
antoine_garden.save

francois_garden = Garden.create(
  address: '1, rue Jacques-Louis Bernier, 92700 Colombes',
  name: 'A beautiful lake 10min from Paris',
  description: 'Enjoy fishing and partying with an amazing view',
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

francois_garden.remote_photo_url = 'https://images.unsplash.com/photo-1470753937643-efeb931202a9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=605dda29d7945345968d2dfb3eeb672e&auto=format&fit=crop&w=750&q=80'
francois_garden.save

manon_garden_two = Garden.create(
  address: '61, rue de Rochechouart 75009',
  name: 'Paradise in Paris',
  description: 'Wonderful swimming pool near Canal Saint Martin',
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true
  )

manon_garden_two.remote_photo_url = 'https://images.unsplash.com/photo-1425421598808-4a22ce59cc97?ixlib=rb-0.3.5&s=d719ff26022e3e1d449aeab0a120586f&auto=format&fit=crop&w=750&q=80'
manon_garden_two.save

philippine_garden_two = Garden.create(
  address: '160 rue Championnet, 75018 Paris',
  name: 'Loft with rooftop near Montmartre',
  description: 'Nice barbecue in the heart of Menilmontant',
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

philippine_garden_two.remote_photo_url = 'https://images.unsplash.com/photo-1523301343968-6a6ebf63c672?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=675d706c330862ec0a0b01703de8abba&auto=format&fit=crop&w=1350&q=80'
philippine_garden_two.save

antoine_garden_two = Garden.create(
  address: '71 quai de la Seine, 75019 Paris',
  name: 'Paradise in Paris',
  description: 'Wonderful swimming pool near Canal Saint Martin',
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true
  )

antoine_garden_two.remote_photo_url = 'https://images.unsplash.com/photo-1439539698758-ba2680ecadb9?ixlib=rb-0.3.5&s=1d4011177a78377e86a79865dddacf8b&auto=format&fit=crop&w=750&q=80'
antoine_garden_two.save

francois_garden_two = Garden.create(
  address: '16 villa Gaudelet, 75011 Paris',
  name: 'Beautiful loft',
  description: 'Nice barbecue in the heart of Menilmontant',
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

francois_garden_two.remote_photo_url = 'hhttps://images.unsplash.com/photo-1464808322410-1a934aab61e5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6505a19687214478068bce99fd22dfc7&auto=format&fit=crop&w=750&q=80'
francois_garden_two.save

manon_garden_third = Garden.create(
  address: '71 quai de la Seine, 75019 Paris',
  name: 'Paradise in Paris',
  description: 'Wonderful swimming pool near Canal Saint Martin',
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true
  )

manon_garden_third.remote_photo_url = 'https://images.unsplash.com/photo-1528495612343-9ca9f4a4de28?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f38859ca09733768682117d67c23d575&auto=format&fit=crop&w=667&q=80'
manon_garden_third.save

philippine_garden_third = Garden.create(
  address: '16 villa Gaudelet, 75011 Paris',
  name: 'Beautiful loft',
  description: 'Nice barbecue in the heart of Menilmontant',
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

philippine_garden_third.remote_photo_url = 'https://images.unsplash.com/40/10294420724_0300cf921d_o.jpg?ixlib=rb-0.3.5&s=3b0f1b7d575d7ca45f744bfd440abc07&auto=format&fit=crop&w=750&q=80'
philippine_garden_third.save

francois_garden_third = Garden.create(
  address: '16 villa Gaudelet, 75011 Paris',
  name: 'Beautiful loft',
  description: 'Nice barbecue in the heart of Menilmontant',
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

francois_garden_third.remote_photo_url = 'https://images.unsplash.com/photo-1523301343968-6a6ebf63c672?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=675d706c330862ec0a0b01703de8abba&auto=format&fit=crop&w=750&q=80'
francois_garden_third.save

antoine_garden_third = Garden.create(
  address: '71 quai de la Seine, 75019 Paris',
  name: 'Paradise in Paris',
  description: 'Wonderful swimming pool near Canal Saint Martin',
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true
  )

antoine_garden_third.remote_photo_url = 'https://images.unsplash.com/photo-1520869309377-88c9274a27c2?ixlib=rb-0.3.5&s=dfe19ac66d459b6bbaf3f5cefb3e0618&auto=format&fit=crop&w=750&q=80'
antoine_garden_third.save

Booking.destroy_all

puts "Seeding bookings"
first_booking = Booking.create(
  start_date: Date.new,
  end_date: Date.new + 2,
  user: manon,
  garden: manon_garden,
  nbguests: 3,
  total_price: 300,
  nb_nights: 2
  )

second_booking = Booking.create(
  start_date: Date.new,
  end_date: Date.new + 1,
  user: manon,
  garden: philippine_garden,
  nbguests: 2,
  total_price: 100,
  nb_nights: 1
  )

puts "all done !"

