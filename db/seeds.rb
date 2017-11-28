puts 'Cleaning Db'

Booking.destroy_all
XmasItem.destroy_all
User.destroy_all




puts 'Creating users ... '



paul = User.new(firstname: "Paul",lastname:"Job", email: 'paul@gmail.com', password: 123456)
paul.save!

francois = User.new(firstname: "Francois",lastname:"Job", email: 'francois@gmail.com' , password: 123456)
francois.save!

jerome = User.new(firstname: "Jerome", lastname: "Bob", email: 'jerome@gmail.com' , password: 123456)
jerome.save!

pauline = User.new(firstname: "Pauline", lastname: "Bob", email: 'pauline@gmail.com', password: 123456)
pauline.save!


puts 'Users Finished!'



puts 'Creating xmas_items ... '



sapin = XmasItem.new(user: paul, name: "sapin", description: "beautiful xmas tree", price_per_day: 15, available: true, photo:"url", address: "paris" )
sapin.save!

lutin = XmasItem.new(user: paul, name: "lutin", description: "lutin Games of thrones", price_per_day: 50, available: true, photo:"url", address: "Kings landing" )
lutin.save!

pull = XmasItem.new(user: pauline ,name: "Pull de noel", description: "Pull de noel Kiabi", price_per_day: 25, available: true, photo:"url", address: "Nantes" )
pull.save!

guirlande = XmasItem.new(user: pauline, name: "Guirlande", description: "Guirlande de noel", price_per_day: 5, available: true, photo:"url", address: "Nantes" )
guirlande.save!


chausette = XmasItem.new(user: francois, name: "Chausette", description: "Chausette de noel", price_per_day: 15, available: true, photo:"url", address: "paris" )
chausette.save!

geant_noel = XmasItem.new(user: francois, name: "Geant de noel", description: "geant_noel Games of thrones", price_per_day: 50, available: true, photo:"url", address: "Kings landing" )
geant_noel.save!

creche = XmasItem.new(user: jerome ,name: "Creche de noel", description: "Creche de noel de bethleme", price_per_day: 25, available: true, photo:"url", address: "Nantes" )
creche.save!

sapin_artificielle = XmasItem.new(user: jerome, name: "Sapin artificielle", description: "Sapin artificielle de noel", price_per_day: 5, available: true, photo:"url", address: "Nantes" )
sapin_artificielle.save!


puts 'xmas_items Finished!'



puts 'creating bookings'

booking_sapin = Booking.new(user: francois, xmas_item: sapin, start_date: "2017-12-1", end_date: "2017-12-5", status:"accepted", total_price: 75)
booking_sapin.save!

booking_sapin = Booking.new(user: pauline, xmas_item: sapin, start_date: "2017-12-6", end_date: "2017-12-8", status:"pending", total_price: 30)
booking_sapin.save!

booking_creche = Booking.new(user: francois, xmas_item: creche, start_date: "2017-12-20", end_date: "2017-12-22", status:"accepted", total_price: 50)
booking_creche.save!

booking_creche = Booking.new(user: pauline, xmas_item: creche, start_date: "2017-12-23", end_date: "2017-12-25", status:"pending", total_price: 50)
booking_creche.save!


puts 'booking Finished!'


