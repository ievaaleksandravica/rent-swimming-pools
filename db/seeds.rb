# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# drop, create, migrate, seed
puts "Cleaning database..."
Booking.destroy_all
Pool.destroy_all

User.destroy_all


puts "Starting Pool Creation"

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
puts "User #{user_1.first_name} #{user_1.last_name} created"


user_2 = User.new(
  email: 'apple@apple.com',
  password: 'appleapple',
  first_name: 'Green',
  last_name: 'Apple',
  birthdate: '2000-01-01'
  )
user_2.save!
puts "User #{user_2.first_name} #{user_2.last_name} created"

user_3 = User.new(
  email: 'orange@orange.com',
  password: 'orange',
  first_name: 'Annoying',
  last_name: 'Orange',
  birthdate: '2000-01-01'
  )
user_3.save!
puts "User #{user_3.first_name} #{user_3.last_name} created"


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
  user: User.all.sample,
  address: "Elisabethkirchstraße 22, 10115, Berlin"
 )
pool_1.save!
puts "Pool #{pool_1.title} created"


pool_2 = Pool.new(
  title: 'Urban Jungle Oasis',
  description: 'Surround yourself in Bamboo and Brazilian Teak as you escape city life and unwind in this one-of-a-kind designer backyard. Inspired by our trips to Bali and Brazil, this vacation-like retreat is equipped with spa jets, waterfall, a luxurious pebble bottom finish, and an 8-foot privacy fence.',
  street: 'Invalidenstraße 23',
  city: 'Berlin',
  zip_code: 10115,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Invalidenstraße 23, 10115, Berlin"
 )
pool_2.save!
puts "Pool #{pool_2.title} created"

pool_3 = Pool.new(
  title: 'Lounge Vibe, gorgeous area, private!',
  description: 'Lounge Vibe, gorgeous area, private!
  A great space with a heated pool, Sonos system, plenty of seating + parking, perfect for a day or evening event',
  street: 'Rudi-Dutschke-Straße 26',
  city: 'Berlin',
  zip_code: 10969,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Rudi-Dutschke-Straße 26, 10969, Berlin"
 )
pool_3.save!
puts "Pool #{pool_3.title} created"


pool_4 = Pool.new(
  title: 'Party Pool!',
  description: 'Great heated pool, Plus Hot Tub. Also contains outdoor Patio Bar, with one built in electrical outlet, and a gas bbq Grill. There is also furniture for lounging',
  street: 'Tauentzienstraße 21',
  city: 'Berlin',
  zip_code: 10789,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Tauentzienstraße 21, 10789, Berlin"
 )
pool_4.save!
puts "Pool #{pool_4.title} created"


pool_5 = Pool.new(
  title: 'Heated Saltwater Swimming Oasis!',
  description: 'Come relax in our private oasis. Beautiful heated, saltwater in-ground pool. Included is use of lounge chairs, dining table, stand-up cooler, gas grill, bluetooth speaker, and half bath with outside entrance. Will be open until mid-October!',
  street: 'Platz der Deutschen Einheit 4',
  city: 'Hamburg',
  zip_code: 20457,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Platz der Deutschen Einheit 4, 20457, Hamburg"
 )
pool_5.save!
puts "Pool #{pool_5.title} created"


pool_6 = Pool.new(
  title: 'Heaven on Earth Swimming Pool',
  description: 'Beautiful,serene park like setting. Large pool deck with plenty of seating and hammock. Basketball hoop and balls are included. Diving board in the deep end. Covid-19 protected. All common areas (chairs, float, basketballs, bathroom etc) are sprayed with Lysol disinfectant after each group. The pool is chlorinated nightly.',
  street: 'Glockengießerwall 5',
  city: 'Hamburg',
  zip_code: 20095,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Glockengießerwall 5, 20095, Hamburg"
 )
pool_6.save!
puts "Pool #{pool_6.title} created"

pool_7 = Pool.new(
  title: 'Great backyard heated pool',
  description: 'Great backyard heated pool
#   Grecian shaped heated backyard pool with cabana and changing rooms. Great for swimming with kids, lessons or swimming laps for exercise.',
  street: 'Am Sandtorpark 12',
  city: 'Hamburg',
  zip_code: 20457,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Am Sandtorpark 12, 20457, Hamburg"
 )
pool_7.save!
puts "Pool #{pool_7.title} created"

pool_8 = Pool.new(
  title: 'Awesome fun!',
  description: 'Oasis in Queens The best pool in town. It’s like a true Oasis. Make your celebration special while you enjoy a swim . Location in the heart of Queens , near all major highways and bridges . Heated and salt water. Min rental 3 Hours 30 max ppl . Place must be left clean . Please read rules.',
  street: 'Theresienhöhe 16',
  city: 'München',
  zip_code: 80339,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Theresienhöhe 16, 80339, München"
 )
pool_8.save!
puts "Pool #{pool_8.title} created"

pool_9 = Pool.new(
  title: 'Enjoy our resort like backyard oasis!',
  description: 'Beautiful back yard area with heated pool. Pool is regularly cleaned and ph checked. Capacity 10-12 persons, rented on hourly basis. Extra amenities for an extra fee if interested.',
  street: 'Jungfernturmstraße 22',
  city: 'München',
  zip_code: 80333,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Jungfernturmstraße 22, 80333, München"
 )
pool_9.save!
puts "Pool #{pool_9.title} created"


pool_10 = Pool.new(
  title: 'Fully Private Outdoor Pool',
  description: 'Large outdoor private heated saltwater pool completely blocked by tall trees on all sides. Enjoy a private swim with family or friends without worrying about prying eyes. Additional amazing benefit of access to a bathroom during your swim time.',
  street: 'Barer Str. 27',
  city: 'München',
  zip_code: 80333,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Barer Str. 27, 80333, München"
 )
pool_10.save!
puts "Pool #{pool_10.title} created"

pool_11 = Pool.new(
  title: 'Cave Salt Pool Grotto Slide',
  description: 'Upscale pool with Cave, salt, grotto, hidden slide, swim up bar, and shallow benches for lounging and chilling. Truly a once in a life time experience. Featured in “A” list top music videos and national TV shows and documentaries.',
  street: 'Tierparkstraße 30',
  city: 'München',
  zip_code: 81543,
  category: category.sample,
  max_capacity: capacity.sample,
  qm: rand(5..100),
  price_per_day: rand(50..250),
  rating: rand(1..5),
  user: User.all.sample,
  address: "Tierparkstraße 30, 81543, München"
 )
pool_11.save!
puts "Pool #{pool_11.title} created"


booking_1 = Booking.new(
  start_date: '2021-08-01',
  end_date: '2021-08-4',
  pool: Pool.all.sample,
  user: User.all.sample
  )
booking_1.save!
puts "Booking for user #{booking_1.user.first_name} --- Pool #{booking_1.pool.title}  created"


booking_2 = Booking.new(
  start_date: '2021-08-03',
  end_date: '2021-08-7',
  pool: Pool.all.sample,
  user: User.all.sample
  )
booking_2.save!
puts "Booking for user #{booking_2.user.first_name} --- Pool #{booking_2.pool.title}  created"


booking_3 = Booking.new(
  start_date: '2021-09-01',
  end_date: '2021-09-03',
  pool: Pool.all.sample,
  user: User.all.sample
  )
booking_3.save!
puts "Booking for user #{booking_3.user.first_name} --- Pool #{booking_3.pool.title}  created"


pool_1.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627721935/0ot4TK77QJPgEZNXdsANE6yD42BS4lcHKcl9HcN5_csqdiz.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')

pool_1.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627721935/4T93KlLRgGOTvlI5Aht4mV7Zm9wxzISHx1TAcl4w_sz9nih.jpg"), filename: 'rp2.jpg', content_type: 'image/jpg')

pool_1.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627721935/cRZTuTKu1u38rYdWyE6ImeBEjCU83wXgwEUVO9ju_pt476f.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')

puts "Photos for Pool_1 attached"



pool_2.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722075/VCdbnE4Nxn6YSwxJgBnxd2lehmOk0vLrqdHK2J7n_wlztye.jpg"), filename: 'rp4.jpg', content_type: 'image/jpg')

pool_2.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722075/1416-115972208251564978945_a1asmg.jpg"), filename: 'rp5.jpg', content_type: 'image/jpg')

pool_2.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722075/1416-115972208251564978945_a1asmg.jpg"), filename: 'rp6.jpg', content_type: 'image/jpg')
puts "Photos for Pool_2 attached"


pool_3.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722212/13592-cover11091119561624156269_vbmoau.jpg"), filename: 'rp7.jpg', content_type: 'image/jpg')

pool_3.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722212/13592-cover11091119561624156269_vbmoau.jpg"), filename: 'rp8.jpg', content_type: 'image/jpg')

pool_3.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722212/13592-619644510571624228228_mhtpae.png"), filename: 'rp9.jpg', content_type: 'image/jpg')
puts "Photos for Pool_3 attached"


pool_4.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722980/Ixb9Vq5HZfEDbL9FBJyefFq6AxuGSOgTaVTLe2Np_jqmx13.jpg"), filename: 'rp10.jpg', content_type: 'image/jpg')

pool_4.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722980/a73kvQRq1pb0aPIkwaJjUJCc9ftZUXDOb5ZtLEyE_kh0dsc.jpg"), filename: 'rp11.jpg', content_type: 'image/jpg')

pool_4.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627722980/TsnCjMdLBsJhmH5VjYQdJ0mA0Yp0MTJR7mHlldKu_bmueep.jpg"), filename: 'rp12.jpg', content_type: 'image/jpg')
puts "Photos for Pool_4 attached"

pool_5.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723110/4237-016973467341593479775_bwvqef.jpg"), filename: 'rp13.jpg', content_type: 'image/jpg')

pool_5.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723110/4237-cover20649196331593479773_nm10vw.jpg"), filename: 'rp14.jpg', content_type: 'image/jpg')

pool_5.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723110/4237-cover20649196331593479773_nm10vw.jpg"), filename: 'rp15.jpg', content_type: 'image/jpg')
puts "Photos for Pool_5 attached"

pool_6.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723215/17619-19815512551627609576_s8czil.jpg"), filename: 'rp16.jpg', content_type: 'image/jpg')

pool_6.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723215/17619-04101159731627609575_kelzpg.jpg"), filename: 'rp17.jpg', content_type: 'image/jpg')

pool_6.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723215/17619-cover13306858781627609579_qrjd3f.jpg"), filename: 'rp18.jpg', content_type: 'image/jpg')
puts "Photos for Pool_6 attached"



pool_7.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723339/16085-018517710921626143921_hxrzjo.jpg"), filename: 'rp19.jpg', content_type: 'image/jpg')

pool_7.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723339/16085-cover2368171101626143925_mbtfin.jpg"), filename: 'rp20.jpg', content_type: 'image/jpg')

pool_7.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723339/16085-118563916531626143922_pcu1aq.jpg"), filename: 'rp21.jpg', content_type: 'image/jpg')
puts "Photos for Pool_7 attached"



pool_8.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723691/11501-cover18705329301622592231_wozysb.jpg"), filename: 'rp22.jpg', content_type: 'image/jpg')
pool_8.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723691/11501-418133084091622592803_auytgu.jpg"), filename: 'rp23.jpg', content_type: 'image/jpg')

pool_8.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723691/11501-15250258691622592802_qe7qu3.jpg"), filename: 'rp24.jpg', content_type: 'image/jpg')
puts "Photos for Pool_8 attached"


pool_9.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723780/7413-12385010561597621075_s0p3e2.jpg"), filename: 'rp25.jpg', content_type: 'image/jpg')
pool_9.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723780/lSHVk0sEX5B1cZCXFYIXJDV4ZDkPzbrYmZVuwAi6_xmbwm3.jpg"), filename: 'rp26.jpg', content_type: 'image/jpg')

pool_9.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723780/Ngkx8MbQmsjFWl0ESXt1lu3tkh3F8nakbYulgF6v_qjos29.jpg"), filename: 'rp27.jpg', content_type: 'image/jpg')
puts "Photos for Pool_9 attached"


pool_10.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723865/737-56675199421620239567_ubsagu.jpg"), filename: 'rp28.jpg', content_type: 'image/jpg')
pool_10.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723866/737-65006333911625332810_i8kkoc.jpg"), filename: 'rp29.jpg', content_type: 'image/jpg')

pool_10.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723866/737-015194603261595388941_hjg4gb.jpg"), filename: 'rp30.jpg', content_type: 'image/jpg')
puts "Photos for Pool_10 attached"


pool_11.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723965/4671-cover9685495421594938867_obbzkr.jpg"), filename: 'rp31.jpg', content_type: 'image/jpg')
pool_11.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723965/4671-09359895131594938868_qreuu5.jpg"), filename: 'rp32.jpg', content_type: 'image/jpg')

pool_11.photos.attach(io: URI.open("https://res.cloudinary.com/dzlzazila/image/upload/v1627723965/4671-69117365141595564368_fkn2vj.jpg"), filename: 'rp33.jpg', content_type: 'image/jpg')
puts "Photos for Pool_11 attached"

