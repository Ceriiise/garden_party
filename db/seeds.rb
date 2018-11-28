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
  description: "We have several hangouts in our garden, and our pool is beautiful lit in the evening and turquoise in the daytime just inviting you to jump in. Upstairs is the open living area. The lazy couch on the veranda is overlooking the palm trees (TREEHOUSE) our beautiful garden and pool and has some ocean view aswell. It's the perfect place to wake up and relax drinking your coffee or tea. You can enjoy a nice ocean breeze when you feel its too warm to be outside in the sun or just when you feel the need to be nicely lazy..Inside there is a big (180 x 240) daybed with mosquito net if you need it. Downstairs there is the bedroom, kitchenette, bathroom and a second veranda. We have a rain shower with hot water, there is a standing fan and AC in the bedroom. In the bedroom there is a Flatscreen TV with some channels and movies on demand. The TV has a USB plug so you could take your favo movies or series to watch. We also have a dvd player. We use Indihome fiber for the quickest internet in Bali, so you can stream and download.",
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
  description: "Set in over 3000sqm of native NZ bush. Private, peaceful and close to the sea and stunning West Coast black sand beaches. Just a short drive to Karekare Beach, recently voted the second best beach in the world by Passport magazine.",
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
  name: 'Swimming pool in Menilmontant',
  description: "Both our treehouse and yurt listings are unique experiences. They both are adjacent to the Tierra Madre Vineyard Block and have awesome views of the entire Monterey Bay/Pacific Ocean. We are located on 44 acres high atop the Santa Cruz Mountains but close to all the major beaches and the Silicon Valley.",
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
  name: 'A natural lake near Paris',
  description: "Dwell in bliss like a local in north shore nirvana. the ultimate retreat for surfers, yogis and nature lovers, this jungle bungalow overlooks one of the most famous surf spots on the north shore. Climb 100 steps up a stone path winding through lush foliage to your tree house nestled among black lava rock, shaded by deep green canopy of Banyan, mango, avocado trees. fall asleep to the lullaby of the waves and awaken to the sweet songs of birds in the trees.",
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true,
  swimming_pool: true
  )

francois_garden.remote_photo_url = 'https://images.unsplash.com/photo-1470753937643-efeb931202a9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=605dda29d7945345968d2dfb3eeb672e&auto=format&fit=crop&w=750&q=80'
francois_garden.save

manon_garden_two = Garden.create(
  address: '61, rue de Rochechouart 75009',
  name: 'Paradise in Paris',
  description: "This luxury treehouse was designed by Seth Bolt (from the band NEEDTOBREATHE), who grew up on Bolt Farm. Larry Bolt (Seth's dad), proprietor, Eagle Scout and licensed custom home builder, has been building & remodeling homes for over 40 years in upstate SC.",
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
  name: 'Loft with rooftop',
  description: "In the lower floor is a small library. About Goethe, Schiller, Shakespeare to the modern day. There is a radio with CD-part. A bathroom and a guest toilet are just 30 meters to the main house available for shared use.",
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
  name: 'Eden\'s garden',
  description: "You have access to all amenities in the main house just next door, and of course there's toilet, bathroom, shower, fully equipped kitchen and a large lounge to hang out in! Oh - and did we mention the fire bath?",
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true,
  barbecue: true
  )

antoine_garden_two.remote_photo_url = 'https://images.unsplash.com/photo-1439539698758-ba2680ecadb9?ixlib=rb-0.3.5&s=1d4011177a78377e86a79865dddacf8b&auto=format&fit=crop&w=750&q=80'
antoine_garden_two.save

francois_garden_two = Garden.create(
  address: '13 rue du Jura, 75013 Paris',
  name: 'Beautiful loft',
  description: "Tree House with full private bath. Oak & Italian tile floors. Queen size cherry pencil post bed. Private gazebo with Swing beneath. 300 ft catwalks connecting to lunar Sauna and a 2nd Stone and Cedar Gazebo.",
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

francois_garden_two.remote_photo_url = 'https://images.unsplash.com/photo-1464808322410-1a934aab61e5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6505a19687214478068bce99fd22dfc7&auto=format&fit=crop&w=750&q=80'
francois_garden_two.save

manon_garden_third = Garden.create(
  address: '71 quai de la Seine, 75019 Paris',
  name: 'Paradise in Paris',
  description: "Nestled in the hilled forest behind our home, the Vermont Tree Cabin (16' by 12', 190 sq ft) is a great, quiet place to get away from the hustle and bustle of everyday life. While lounging on the deck or hot tub, you will be able to enjoy the calm and serenity of the outdoors, but still have the comfort of home in our authentic cabin lodging.",
  price: 150,
  max_guests: 20,
  user: manon,
  booked: false,
  swimming_pool: true,
  barbecue: true
  )

manon_garden_third.remote_photo_url = 'https://images.unsplash.com/photo-1528495612343-9ca9f4a4de28?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f38859ca09733768682117d67c23d575&auto=format&fit=crop&w=667&q=80'
manon_garden_third.save

philippine_garden_third = Garden.create(
  address: '220 rue Saint-Jacques, 75005 Paris',
  name: 'Beautiful loft',
  description: "One of our greatest amenities of the cabin is the custom built, white cedar hot tub. Maintained at 100- 104F degrees, the hot tub is ready for your use all year round, 24 hours a day; all you need to do is slide the cover off, relax and enjoy. While relaxing in the tub, be sure to enjoy watching the flames of a fire from the fire pit right off the deck. ",
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

philippine_garden_third.remote_photo_url = 'https://images.unsplash.com/40/10294420724_0300cf921d_o.jpg?ixlib=rb-0.3.5&s=3b0f1b7d575d7ca45f744bfd440abc07&auto=format&fit=crop&w=750&q=80'
philippine_garden_third.save

francois_garden_third = Garden.create(
  address: '32 rue Fondary, 75015 Paris',
  name: 'Beautiful loft',
  description: "Although Made and his wife come to clean everyday it is impossible to get this house sterile, due to the openness and wind and just...nature. So this is not a house for a hosophobic!",
  price: 100,
  max_guests: 30,
  user: philippine,
  booked: false,
  barbecue: true
  )

francois_garden_third.remote_photo_url = 'https://images.unsplash.com/photo-1523301343968-6a6ebf63c672?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=675d706c330862ec0a0b01703de8abba&auto=format&fit=crop&w=750&q=80'
francois_garden_third.save

antoine_garden_third = Garden.create(
  address: "176 rue de l'Université, 75007 Paris",
  name: 'Paradise in Paris',
  description: "Set in over 3000sqm of native NZ bush. Private, peaceful and close to the sea and stunning West Coast black sand beaches. Just a short drive to Karekare Beach, recently voted the second best beach in the world by Passport magazine.",
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
  end_date: Date.new,
  user: manon,
  garden: manon_garden,
  nbguests: 3,
  total_price: 300,
  nb_nights: 2
  )

second_booking = Booking.create(
  start_date: Date.new,
  end_date: Date.new,
  user: manon,
  garden: philippine_garden,
  nbguests: 2,
  total_price: 100,
  nb_nights: 1
  )

puts "all done !"

