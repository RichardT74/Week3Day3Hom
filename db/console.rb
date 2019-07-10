require('pry-byebug')
require_relative('../models/album.rb')
require_relative('../models/artist.rb')

Artist.delete_all()
Album.delete_all()
