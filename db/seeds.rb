# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.destroy_all
Song.destroy_all

rap = Genre.create(name: 'rap')
hiphop = Genre.create(name: 'hiphop')
melody = Genre.create(name: 'melody')

songs = Song.create([
	{name: '8mile'},
	{name: 'doctor'},
	{name: 'bully'},
	{name: 'wassup'},
	{name: 'sorrynotsorry'},
	{name: 'myname'},
	{name: 'play'},
	{name: 'hahafunny'},
	{name: 'getpeace'},
	{name: 'breathe'},
	{name: 'meditate'},
	{name: 'livelife'}
])




