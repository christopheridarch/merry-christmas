puts 'Cleaning Db'

Booking.destroy_all
XmasItem.destroy_all
User.destroy_all




puts 'Creating users ... '

paul = User.new(firstname: "Paul",
  lastname:"Job",
  email: 'paul@gmail.com',
  password: 123456,
  avatar: File.open(Rails.root.join('db/fixtures/images/paul.jpg'))
  )
paul.save!

francois = User.new(firstname: "Francois",
  lastname:"Job",
  email: 'francois@gmail.com',
  password: 123456,
  avatar: File.open(Rails.root.join('db/fixtures/images/francois.jpg'))
  )
francois.save!

jerome = User.new(firstname: "Jerome",
  lastname: "Bob",
  email: 'jerome@gmail.com',
  password: 123456,
  avatar: File.open(Rails.root.join('db/fixtures/images/jerome.jpg'))
  )
jerome.save!

pauline = User.new(firstname: "Pauline",
  lastname: "Bob",
  email: 'pauline@gmail.com',
  password: 123456,
  avatar: File.open(Rails.root.join('db/fixtures/images/pauline.jpg'))
  )
pauline.save!

puts 'Users Finished!'



puts 'Creating xmas_items ... '


sapin = XmasItem.new(user: paul,
  name: "Christmas tree Norway",
  description: "The Canadian Grande 4.6' Green Fir Artificial Christmas Tree with Clear Lights is a
  smaller stature tree that is compact and a good choice for display in
  limited space areas or secondary rooms. ",
  price_per_day: 3,
  available: true,
  photo:File.open(Rails.root.join('db/fixtures/images/sapin.jpg')),
  address: "London",
  )
sapin.save!

lutin = XmasItem.new(user: paul,
  name: "Dwarf Gnome with Hat",
  description: "This listing is for one (1) super charming little elf that can be put in the Christmas tree or sit on a shelf. Made of plastic, handpainted and with felt clothes. Price is for one (1) elf. There are 5 available. Tin jar in first pic not included. ",
  price_per_day: 7,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/lutin.jpg')),
  address: "Kings landing"
  )
lutin.save!

pull = XmasItem.new(user: pauline,
  name: "Christmas Jumper",
  description: "Welcome to The Shed Outlet Store.
This Sweatshirt is made of premium quality Cotton (80%) Polyester (20%) for a great quality soft feel, and comfortable Unisex fit. ",
  price_per_day: 5,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/pull.jpg')),
  address: "Nantes" )

pull.save!

guirlande = XmasItem.new(user: pauline,
  name: "Christmas garland",
  description: "Garland flower - IP20 / 3 V - 20 LED blanc - Fil tTP - A piles - Ext 20 cm - Length : 2 m.",
  price_per_day: 5,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/guirlande.jpg')),
  address: "Nantes" )
guirlande.save!


chaussette = XmasItem.new(user: francois,
  name: "Xmas Socks",
  description: "You are viewing a multi-blend fabric socks for your everyday life. The cotton and polyester give you the warmth while the elastane cushioned firmly in place for maximum comfort. Both sides are identical.",
  price_per_day: 15,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/chaussette.jpg')),
  address: "paris" )
chaussette.save!






puts 'creating bookings'

booking_sapin = Booking.new(user: francois, xmas_item: sapin, start_date: "2017-12-1", end_date: "2017-12-5", status:"accepted", total_price: 75)
booking_sapin.save!

booking_sapin = Booking.new(user: paul, xmas_item: sapin, start_date: "2017-12-6", end_date: "2017-12-8", status:"pending", total_price: 30)
booking_sapin.save!

booking_guirlande = Booking.new(user: francois, xmas_item: guirlande, start_date: "2017-12-20", end_date: "2017-12-22", status:"accepted", total_price: 50)
booking_guirlande.save!

booking_guirlande = Booking.new(user: paul, xmas_item: guirlande, start_date: "2017-12-23", end_date: "2017-12-25", status:"pending", total_price: 50)
booking_guirlande.save!


puts 'booking Finished!'


