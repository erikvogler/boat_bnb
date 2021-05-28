# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Seeding..."

puts "Cleaning up user database..."
User.destroy_all
puts "Cleaning up boats database..."
Boat.destroy_all
puts "Database cleaned"
puts "Creating 20 users"
puts "Creating 20 boats"
user = User.create(first_name: 'Alexandra',
            last_name: 'Kunkel',
            username: Faker::Internet.username,
            address: 'Leopoldstraße 87, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108360/users/woman0.jpg")
puts "Created user number #{user.id}."
boat = Boat.create( name: 'Titanic',
             description: 'This elven noble\'s yacht has a bulky hull with lateen rigged canvas sails. The ship\'s captain is a female elf lady named Ainid,',
             location: 'Leopoldstraße 75, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113159/boats/photo-1527679124583-9208be990bb5_j6xbv5.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Peaceful Destiny',
             description: 'This explorer\'s ship has a bulky hull with three rows of long oars worked by ogre slaves. The ship\'s captain is a female wizard named Wulfwe.',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113238/boats/photo-1575893240675-17e719ffa7c5_vkpqcj.jpg"
)
puts "Created boat number #{boat.id}."
user = User.create(first_name: 'Valentin',
            last_name: 'Sorg',
            username: Faker::Internet.username,
            address: 'Brandenburgische Straße 97, Berlin',
            email: Faker::Internet.email, password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108758/users/man3.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Victoria',
            last_name: 'Sitz',
            username: Faker::Internet.username,
            address: 'Genslerstraße 99, Berlin',
            email: Faker::Internet.email, password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108339/users/woman1.jpg")
puts "Created user number #{user.id}."
boat = Boat.create( name: 'The Wolf',
             description: 'This dwarven pirate ship has a salvaged hull with a raised quarterdeck. The ship\'s captain is a female dwarf cleric named Kadu, and it is crewed by greedy dwarven privateers.',
             location: 'Brandenburgische Straße 29, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113257/boats/photo-1513326238704-b2cd281a3d53_ik0uzv.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Fortress',
             description: 'This dwarven warship has a battle-scarred hull with a tall aftcastle. The ship\'s captain is a male dwarf named Mahor, and it is crewed by grim dwarven axemen.',
             location: 'Brandenburgische Straße 90, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113355/boats/1200px-Motorboat_at_Kankaria_lake_tjeqlg.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Silver Cutter',
             description:'This noble\'s yacht has a stout hull with a golden aftcastle, and is held aloft by a pair of magical giant feathered wings. The ship\'s captain is a male aristocrat named Edmugh Sparry.',
             location: 'Leopoldstraße 44, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113363/boats/rowboat_ajanpz.jpg"
)
puts "Created boat number #{boat.id}."
user = User.create(first_name: 'Rebekka',
            last_name: 'Southers',
            username: Faker::Internet.username,
            address: 'Genslerstraße 32, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108206/users/woman2.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Anna',
            last_name: 'Foehrkolb',
            username: Faker::Internet.username,
            address: 'Leopoldstraße 26, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108180/users/pug.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Emil',
            last_name: 'Kuhn',
            username: Faker::Internet.username,
            address: 'Leopoldstraße 57, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108319/users/men0.jpg")
puts "Created user number #{user.id}."
boat = Boat.create( name: 'The Red Raider',
             description: 'This merchant ship has a salvaged hull and corroded iron fittings, and is held aloft by a pair of magical giant feathered wings. The ship\'s captain is a short woman named Wena. The ship\'s stern hold is filled with amphorae of oil.',
             location: 'Waßmannsdorfer Chaussee 61, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113372/boats/15039721-309681302764866-105153824175360654-o-1620329703_lmezzw.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Green Indefatigable',
             description:'This warship has a mithral hull with a row of ironwood oars. The ship\'s captain is a man named Wealda, who is hunting the pirate who stole his ancestral sword.',
             location: 'Brandenburgische Straße 98, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113382/boats/90_prvlcv.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Wiggly Lance',
             description:'This dwarven merchant ship has a stout hull. The ship\'s captain is a slender male dwarf named Kuli. The ship\'s main hold is filled with barrels of rye flour.',
             location: 'Genslerstraße 48, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113393/boats/the-hinckley-sport-boat_water_h162mg.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Lover',
             description:'This monstrous pirate ship has an elegant hull with a round forecastle. The ship\'s captain is a depraved vampire named Fricada, who seeks only fame and glory. The ship is armed with a ballista and grappling ramps.',
             location: 'Genslerstraße 84, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113405/boats/Maybe-lead-Huckins-6_cddjxw.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Reef',
             description: 'This elven noble\'s yacht has a bulky hull and a sculpted figurehead, and is carried on the back of a whale. The ship\'s captain is a female elf named Indel, who desperately seeks to save herself from financial ruin.',
             location: 'Genslerstraße 81, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113418/boats/file-20191001-173407-1q8ha18.jpg_gl9rgc.jpg"
)
puts "Created boat number #{boat.id}."
user = User.create(first_name: 'Liese',
            last_name: 'Ritter',
            username: Faker::Internet.username,
            address: 'Genslerstraße 43, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108081/users/dog1.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Xavier',
            last_name: 'Schulte',
            username: Faker::Internet.username,
            address: 'Waßmannsdorfer Chaussee 71, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108276/users/men1.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Alwin',
            last_name: 'Teufel',
            username: Faker::Internet.username,
            address: 'Brandenburgische Straße 18, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108152/users/labrador.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Franziska',
            last_name: 'Heinrich',
            username: Faker::Internet.username,
            address: 'Leopoldstraße 5, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108031/users/cat.jpg")
puts "Created user number #{user.id}."
boat = Boat.create( name: 'The Enthusiastic Vengeance',
             description: 'This dwarven noble\'s yacht has a narrow hull with two rows of iron oars worked by rope golems. The ship\'s captain is a male dwarf lord named Gamah, who is cursed to never set foot on land.',
             location: 'Genslerstraße 95, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113447/boats/Avanguardia-Megayacht-08_wx4hen.png"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Lass',
             description: 'This warship has a salvaged hull with a tall aftcastle, and is carried on the back of a giant manta ray. The ship\'s captain is a man named Eodbeod, who seeks to fulfill an ancient prophecy.',
             location: 'Leopoldstraße 60, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113463/boats/5939a553-efec-4eab-a2ee-cd72dfbda8d8-boat-sink_xaw88s.jpg"
)
puts "Created boat number #{boat.id}."
user = User.create(first_name: 'Austin',
            last_name: 'Bergmann',
            username: Faker::Internet.username,
            address: 'Genslerstraße 68, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107994/users/man.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Dan',
            last_name: 'Werner',
            username: Faker::Internet.username,
            address: 'Genslerstraße 47, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107883/users/man1.jpg")
puts "Created user number #{user.id}."
boat = Boat.create( name: 'The Andromeda',
             description: 'This explorer\'s ship has a leaky hull, and is held aloft by giant magical crystals. The ship\'s captain is a male warrior named Wine, who is searching for the legendary sunken kingdom of Karnione.',
             location: 'Genslerstraße 98, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113480/boats/yacht-post-825x510_glue1k.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Noiseless Retribution',
             description: 'This warship has a bulky hull carved with runes and symbols, and is propelled by a complex magical engine. The ship\'s captain is a man named Aerelm, and it is crewed by trained crossbowmen. The ship is armed with a pair of turreted ballistas.',
             location: 'Genslerstraße 92, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113498/boats/Dory_xkejcg.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Blue Beacon',
             description: 'This elven explorer\'s ship has a broad hull, and is propelled by a complex magical engine. The ship\'s captain is a male elf warrior named Adhor, who seeks only fame and glory.',
             location: 'Brandenburgische Straße 29, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113518/boats/image_du5keh.jpg"
)
puts "Created boat number #{boat.id}."
user = User.create(first_name: 'Carmen',
            last_name: 'Scheinder',
            username: Faker::Internet.username,
            address: 'Genslerstraße 71, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107896/users/woman4.jpg")
puts "Created user number #{user.id}."
boat = Boat.create( name: 'The Sirocco',
             description: 'This noble\'s yacht has a leaky hull with a golden aftcastle. The ship\'s commander is a man named Rarder, and it is crewed by expert sailors.',
             location: 'Leopoldstraße 36, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113538/boats/boat-rentals-giethoorn-overijssel-processed.jpg_rf5cdp.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Shadow',
             description: 'This merchant ship has a bulky hull. The ship\'s captain is a female merchant named Malia, and it is crewed by a company of mercenaries.',
             location: 'Waßmannsdorfer Chaussee 60, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113559/boats/tj_pilot_ir6nhw.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Boiling Challenge',
             description: 'This warship has an elegant hull with three rows of long oars worked by rope golems. The ship\'s captain is a young man named Stomond, who seeks to prove himself to his peers. Numerous shields hang from the sides of the hull as trophies.',
             location: 'Leopoldstraße 11, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113581/boats/7701696_20201231090351127_1_XLARGE_yabwoc.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Dynasty',
             description: 'This warship has a leaky hull with an armored aftcastle. The ship\'s captain is a man named Iermund, and it is crewed by strong swordsmen.',
             location: 'Waßmannsdorfer Chaussee 93, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113604/boats/Palos-Verdes-Panga-Boat_p7h32n.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Electric Ray',
             description: 'This noble\'s yacht has a salvaged hull with a golden aftcastle, and is pulled by a team of giant seahorses. The ship\'s captain is a hateful man named Waltin Bexley, who desperately seeks to save himself from financial ruin. The ship is armed with two ballistas, mounted facing fore and aft.',
             location: 'Brandenburgische Straße 40, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113629/boats/BLISS-YACHT-IYC-2_vx1jwq.jpg"
)
puts "Created boat number #{boat.id}."
user = User.create(first_name: 'Alexander',
            last_name: 'Brandt',
            username: Faker::Internet.username,
            address: 'Genslerstraße 96, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107829/users/man2.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Kayla',
            last_name: 'Beitel',
            username: Faker::Internet.username,
            address: 'Genslerstraße 11, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107802/users/woman5.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Ingram',
            last_name: 'Jung',
            username: Faker::Internet.username,
            address: 'Leopoldstraße 14, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107974/users/woman.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Michelle',
            last_name: 'Straub',
            username: Faker::Internet.username,
            address: 'Brandenburgische Straße 77, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107956/users/woman3.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Lex',
            last_name: 'Hartmann',
            username: Faker::Internet.username,
            address: 'Brandenburgische Straße 9, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108052/users/labrador-flower.jpg")
puts "Created user number #{user.id}."
boat = Boat.create( name: 'The Abashed Lass',
             description: 'This dwarven merchant ship has an elegant hull with a small aftcastle. The ship\'s captain is a young male dwarf named Ukrat, and it is crewed by heroic warriors. The ship is armed with two ballistas, mounted facing fore and aft.',
             location: 'Waßmannsdorfer Chaussee 33, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113654/boats/470146a23f8f852125d523080e4f3c7b.Yacht-Holiday-Indonesia-1_sddenf.jpg"
)
puts "Created boat number #{boat.id}."
boat = Boat.create( name: 'The Jade Protector',
             description: 'This monstrous explorer\'s ship has a stout hull and carved bone fittings. The ship\'s commander is a female troll cartographer named Uzgash, and it is crewed by an entourage of loyal soldiers.',
             location: 'Leopoldstraße 43, Berlin',
             price_per_night: rand(50..500),
             user_id: user.id,
             pictures_url: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622113432/boats/15039721-309681302764866-105153824175360654-o-1620329703.jpeg_wrio9h.jpg"
)
puts "Created boat number #{boat.id}."
user = User.create(first_name: 'Ulric',
            last_name: 'Kohler',
            username: Faker::Internet.username,
            address: 'Genslerstraße 60, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622107944/users/man0.jpg")
puts "Created user number #{user.id}."
user = User.create(first_name: 'Eduard',
            last_name: 'Kiefer',
            username: Faker::Internet.username,
            address: 'Waßmannsdorfer Chaussee 66, Berlin',
            email: Faker::Internet.email,
            password: "123456",
            profile_pic: "https://res.cloudinary.com/dr8v0dbbd/image/upload/v1622108113/users/dog.jpg")
puts "Created user number #{user.id}."
puts "Finished creating 20 users and boats."
puts "Finished!"

