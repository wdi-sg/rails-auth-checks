# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all

pop = Genre.new(name: "Pop", description: "Stuff that gets played over the radios all the time")
pop.save

jazz = Genre.new(name: "Jazz", description: "For the hipsters")
jazz.save

classical = Genre.new(name: "Classical", description: "For listening with a monocle")
classical.save

Song.destroy_all

luna = Song.new(name: "La Luna")
luna.save

black_or_white = Song.new(name: "Black or White")
black_or_white.save

despacito = Song.new(name: "Despacito")
despacito.save

route_66 = Song.new(name: "Route 66")
route_66.save

tea_for_two = Song.new(name: "Tea for Two")
tea_for_two.save

fantasie = Song.new(name: "Fantaisie Impromptu")
fantasie.save

requiem = Song.new(name: "Requiem")
requiem.save

elise = Song.new(name: "Fur Elise")
elise.save

pop.songs << luna
pop.songs << black_or_white
pop.songs << despacito
pop.songs << route_66
pop.songs << fantasie
pop.songs << elise

jazz.songs << luna
jazz.songs << despacito
jazz.songs << route_66
jazz.songs << tea_for_two
jazz.songs << elise

classical.songs << black_or_white
classical.songs << tea_for_two
classical.songs << fantasie
classical.songs << requiem
classical.songs << elise