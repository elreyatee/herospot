# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create!(full_name: "Bob Example", email: "bob@examples.com", password: "12345678")

hero = Category.create!(name: "Hero")
villain = Category.create!(name: "Villain")

Hero.create!(name: "Cyborg Superman",
             small_url: "/tmp/cyborg-superman-small.jpg",
             large_url: "/tmp/cyborg-superman.jpg",
             publisher: "DC",
             biography: "Cyborg is genetically identical to Superman. With a robotic body designed using Kryptonian technology and genetics, he has Superman's abilities and can possess any machine.",
             category: villain)

Hero.create!(name: "Apocalypse",
             small_url: "/tmp/apocalypse-small.jpg",
             large_url: "/tmp/apocalypse.jpg",
             publisher: "Marvel", 
             biography: "Apocalypse aka En Sabah Nur is thousands of years old and enemy of the X-Men. Believed to be the first mutant, Apocalypse is cybernetically enhanced by celestial technology.",
             category: villain)

Hero.create!(name: "Judge Dredd", 
             small_url: "/tmp/judge-dredd-small.jpg",
             large_url: "/tmp/judge-dredd.jpg",
             publisher: "DC",
             biography: "Street Judge of Mega-City One charged to instantly convict, sentence and execute criminals. Rides 'Lawmaster' motorcycle equipped with AI controlled laser cannons.",
             category: hero)
Hero.create!(name: "Judge Death", 
             small_url: "/tmp/judge-death-small.jpg",
             large_url: "/tmp/judge-death.jpg",
             publisher: "DC",
             biography: "Leader of the Dark Judges, a sinister group of undead law enforcers from the dimension of Deadworld, where all life is declared a crime since only the living commit crimes.",
             category: villain)

