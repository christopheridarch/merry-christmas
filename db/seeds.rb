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
  name: "sapin",
  description: "beautiful xmas tree",
  price_per_day: 15,
  available: true,
  photo:File.open(Rails.root.join('db/fixtures/images/sapin.jpg')),
  address: "paris",
  )
sapin.save!

lutin = XmasItem.new(user: paul,
  name: "lutin",
  description: "Luca le lutin artiste, argent et vert, adore peindre et jouer de la guitare.
  C'est un vrai artiste dans l'âme, son visage est fait de plastique et il mesure 16''. C'est un vrai joueur de mauvais coups. ",
  price_per_day: 50,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/lutin.jpg')),
  address: "Kings landing"
  )
lutin.save!

pull = XmasItem.new(user: pauline,
  name: "Pull de noel",
  description: "Véritable phénomène de mode outre-Atlantique,
  le pull de Noël revient cette année avec des motifs toujours aussi fun et décalés !
  Célébrez les fêtes de fin d'année de la manière la plus tendance qui soit ! ",
  price_per_day: 25,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/pull.jpg')),
  address: "Nantes" )

pull.save!

guirlande = XmasItem.new(user: pauline,
  name: "Guirlande",
  description: "Guirlande de noel",
  price_per_day: 5,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/guirlande.jpg')),
  address: "Nantes" )
guirlande.save!


chaussette = XmasItem.new(user: francois,
  name: "Chausette",
  description: "Chausette de noel",
  price_per_day: 15,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/chaussette.jpg')),
  address: "paris" )
chaussette.save!

geant_noel = XmasItem.new(user: francois,
  name: "Geant de noel",
  description: "Noël approche, il est temps de se préparer.Roland le Géant enfile alors son long manteau d'hiver...
  Au fil de sa promenade, il trouve de drôles d'objets et rencontre de nouveaux compagnons qu'il glisse dans ses 24 Poches : une étoile, un bouquet de sapins, des lutins, un pingouin... ",
  price_per_day: 50,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/geant.jpg')),
  address: "Kings landing" )
geant_noel.save!

creche = XmasItem.new(user: jerome,
  name: "Creche de noel",
  description: "Une crèche originale et moderne accompagnée de jolis santons traditionnels.",
  price_per_day: 25,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/creche.jpg')),
  address: "Nantes" )
creche.save!

sapin_artificiel = XmasItem.new(user: jerome,
  name: "Sapin artificielle",
  description: "Le sapin artificiel de Noël Mix Vancouver a un aspect très réaliste grâce à la qualité et à l'aspect de ses branches.
  Le sapin de Noël artificiel est un très bon choix : esthétique, pratique, facile d'utilisation, vous le garderez très longtemps !",
  price_per_day: 5,
  available: true,
  photo: File.open(Rails.root.join('db/fixtures/images/sapin_artificiel.jpg')),
  address: "Nantes" )
sapin_artificiel.save!


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


