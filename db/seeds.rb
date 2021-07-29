# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# drop, create, migrate, seed

category = ['Swimming pool', 'Inflatable pool','Jacuzzi', 'Kids pool' ]
capacity = ['less than 3', '3 to 5','5 to 10', '10 to 20', '20 to 50', 'More than 50']

user_1 = User.new(
  email: 'banana@banana.com',
  password: 'banana',
  first_name: 'Yellow',
  last_name: 'Banana',
  birthdate: '2000-01-01'
  )

user_1.save!

pool_1 = Pool.new(
  title: 'Very attractive pool',
  description: 'The pool is private in a beautiful backyard in Burbank California. There are lounge chairs to relax in the sun and a table, umbrella with chairs. Please contact me for availability and information before booking .Please read all information on my site. Also please do not invite additional guests if already booked. Thank You',
  street: 'Elisabethkirchstraße 22',
  city: 'Berlin',
  zip_code: 10115,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100) ,
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.first
 )
pool_1.save!

booking_1 = Booking.new(
  start_date: '2021-08-01',
  end_date: '2021-08-4',
  pool: Pool.last,
  user: User.last
  )
booking_1.save!
# pool_2 =  Pool.create(
#   title: 'Urban Jungle Oasis',
#   description: 'Surround yourself in Bamboo and Brazilian Teak as you escape city life and unwind in this one-of-a-kind designer backyard. Inspired by our trips to Bali and Brazil, this vacation-like retreat is equipped with spa jets, waterfall, a luxurious pebble bottom finish, and an 8-foot privacy fence.',
#   street: 'Invalidenstraße 23',
#   city: 'Berlin',
#   zip_code: 10115,
#   category: category.sample ,
#   max_capacity: capacity.sample,
#   qm: rand(5..100),
#   price_per_day: rand(50..250),
#   rating: rand(1..5),
#   user_id: 1
#  )


# pool_3 = Pool.create(
#   title: 'Lounge Vibe, gorgeous area, private!',
#   description: 'Lounge Vibe, gorgeous area, private!
#   A great space with a heated pool, Sonos system, plenty of seating + parking, perfect for a day or evening event',
#   street: 'Rudi-Dutschke-Straße 26',
#   city: 'Berlin',
#   zip_code: 10969,
#   category: category.sample ,
#   max_capacity: capacity.sample,
#   qm: rand(5..100),
#   price_per_day: rand(50..250),
#   rating: rand(1..5),
#   user_id: 1
#  )


# pool_4 = Pool.create(
#   title: 'Party Pool',
#   description: 'Great heated pool, Plus Hot Tub. Also contains outdoor Patio Bar, with one built in electrical outlet, and a gas bbq Grill. There is also furniture for lounging',
#   street: 'Tauentzienstraße 21',
#   city: 'Berlin',
#   zip_code: 10789,
#   category: category.sample ,
#   max_capacity: capacity.sample,
#   qm: rand(5..100),
#   price_per_day: rand(50..250),
#   rating: rand(1..5),
#   user_id: 1
#  )


# pool_5 = Pool.create(
#   title: 'Heated Saltwater Swimming Oasis',
#   description: 'Come relax in our private oasis. Beautiful heated, saltwater in-ground pool. Included is use of lounge chairs, dining table, stand-up cooler, gas grill, bluetooth speaker, and half bath with outside entrance. Will be open until mid-October! ',
#   street: 'Platz der Deutschen Einheit 4',
#   city: 'Hamburg',
#   zip_code: 20457,
#   category: category.sample ,
#   max_capacity: capacity.sample,
#   qm: rand(5..100),
#   price_per_day: rand(50..250),
#   rating: rand(1..5),
#   user_id: 1
#  )


# pool_6 = Pool.create(
#   title: 'Heaven on Earth Swimming Pool',
#   description: 'Beautiful,serene park like setting. Large pool deck with plenty of seating and hammock. Basketball hoop and balls are included. Diving board in the deep end. Covid-19 protected. All common areas (chairs, float, basketballs, bathroom etc) are sprayed with Lysol disinfectant after each group. The pool is chlorinated nightly. 2 hour minimum. ',
#   street: 'Glockengießerwall 5',
#   city: 'Hamburg',
#   zip_code: 20095,
#   category: category.sample ,
#   qm: (5..100).sample ,
#   price_per_day: (50..250).sample,
#   rating: (1..5).sample,
#   user_id: 1
#  )


# pool_7 = Pool.create(
#   title: 'Great backyard heated pool',
#   description: 'Great backyard heated pool
#   Grecian shaped heated backyard pool with cabana and changing rooms. Great for swimming with kids, lessons or swimming laps for exercise.',
#   street: 'Am Sandtorpark 12',
#   city: 'Hamburg',
#   zip_code: 20457,
#   category: category.sample ,
#   qm: (5..100).sample ,
#   price_per_day: (50..250).sample,
#   rating: (1..5).sample,
#   user_id: 1
#  )


# pool_8 = Pool.create(
#   title: 'Awesome fun!',
#   description: 'Oasis in Queens The best pool in town. It’s like a true Oasis. Make your celebration special while you enjoy a swim . Location in the heart of Queens , near all major highways and bridges . Heated and salt water. Min rental 3 Hours 30 max ppl . Place must be left clean . Please read rules',
#   street: 'Theresienhöhe 16',
#   city: 'München',
#   zip_code: 80339,
#   category: category.sample ,
#   qm: (5..100).sample ,
#   price_per_day: (50..250).sample,
#   rating: (1..5).sample,
#   user_id: 1
#  )


# pool_9 = Pool.create(
#   title: 'Enjoy our resort like backyard oasis!',
#   description: 'Beautiful back yard area with heated pool. Pool is regularly cleaned and ph checked. Capacity 10-12 persons, rented on hourly basis. Extra amenities for an extra fee if interested.',
#   street: 'Jungfernturmstraße 22',
#   city: 'München',
#   zip_code: 80333,
#   category: category.sample ,
#   qm: (5..100).sample ,
#   price_per_day: (50..250).sample,
#   rating: (1..5).sample,
#   user_id: 1
#  )


# pool_10 = Pool.create(
#   title: 'Fully Private Outdoor Pool',
#   description: 'Large outdoor private heated saltwater pool completely blocked by tall trees on all sides. Enjoy a private swim with family or friends without worrying about prying eyes. Additional amazing benefit of access to a bathroom during your swim time.',
#   street: 'Barer Str. 27',
#   city: 'München',
#   zip_code: 80333,
#   category: category.sample ,
#   qm: (5..100).sample ,
#   price_per_day: (50..250).sample,
#   rating: (1..5).sample,
#   user_id: 1
#  )


# pool_10 = Pool.create(
#   title: 'Cave Salt Pool Grotto Slide',
#   description: 'Upscale pool with Cave, salt, grotto, hidden slide, swim up bar, and shallow benches for lounging and chilling. Truly a once in a life time experience. Featured in “A” list top music videos and national TV shows and documentaries.',
#   street: 'Tierparkstraße 30',
#   city: 'München',
#   zip_code: 81543,
#   category: category.sample ,
#   qm: (5..100).sample ,
#   price_per_day: (50..250).sample,
#   rating: (1..5).sample,
#   user_id: 1
#  )

pool_1.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627583782/images_4_f5am0k.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')

pool_1.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627583782/images_6_iarxsh.jpg"), filename: 'rp2.jpg', content_type: 'image/jpg')

pool_1.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627583782/images_1_rs8ezg.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')

