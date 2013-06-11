Album.delete_all
Artist.delete_all
Genre.delete_all
Song.delete_all
User.delete_all

album1, album2, album3  = ['The White Album', 'Fair Warning', 'The Wall'].map do |name|
	Album.create(name: name)
end

artist1, artist2, artist3  = ['Beatles', 'Pink Floyd', 'Van Halen'].map do |name|
	Artist.create(name: name)
end

genre1, genre2, genre3  = ['Classic', 'Hiphop', 'Heavy Metal'].map do |name|
	Genre.create(name: name)
end

song1, song2, song3  = ['Glass Onion', 'Comfortably Numb', 'Main Streets'].map do |name|
	Song.create(name: name)
end

user1, user2, user3 = ['zlu', 'omar', 'max'].map do |name|
	User.create(name: name)
end

artist1.songs << song1
artist2.songs << song2
artist3.songs << song3

album1.songs << song1
album2.songs << song2
album3.songs << song3

genre1.songs << song2 << song1
genre3.songs << song3

user1.albums << album1 << album2 << album3
user2.albums << album1 << album3
