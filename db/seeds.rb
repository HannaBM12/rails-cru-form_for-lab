# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

a1 = Artist.create(name: "Alsa", bio: "This is my story")
a2 = Artist.create(name: "Ekram", bio: "My past is over")
a3 = Artist.create(name: "Seralio", bio: "I'm going to rich")


g1 = Genre.create(name: "Hip pop")
g2 = Genre.create(name: "Jass")
g3 = Genre.create(name: "Country")

s1 = Song.create(name: "My my", artist_id: a1.id, genre_id: g1.id)
s2 = Song.create(name: "Heart", artist_id: a1.id, genre_id: g1.id)
s3 = Song.create(name: "Bitter", artist_id: a1.id, genre_id: g1.id)
s4 = Song.create(name: "Lovely", artist_id: a1.id, genre_id: g1.id)


