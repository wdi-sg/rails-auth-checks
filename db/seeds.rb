# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Song.destroy_all
# Genre.destroy_all

10.times do
  new_song = Song.new
  new_song.name = Faker::BossaNova.song
  new_song.save
end

genres_list = ["Rock", "Jazz", "Pop", "Metal", "Classical"]
genres_list.each do |item|
  new_genre = Genre.new
  new_genre.name = item
  new_genre.description = Faker::Lorem.sentence
  new_genre.save
end
