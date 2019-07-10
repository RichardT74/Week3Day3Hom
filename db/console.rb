require('pry-byebug')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')

Artist.delete_all()
Album.delete_all()

artist1 = Artist.new({'name' => 'Pink Floyd'})
artist2 = Artist.new({'name' => 'The Beatles'})
artist1.save()
artist2.save()

album1 = Album.new({
  'title' => 'Animals',
  'genre' => 'Prog rock',
  'artist_id' => artist1.id
  })

  album2 = Album.new({
    'title' => 'Let it Be',
    'genre' => 'Legendary',
    'artist_id' => artist2.id
    })
  album1.save()
  album2.save()

binding.pry
nil
