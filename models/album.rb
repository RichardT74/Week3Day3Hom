require_relative('../db/sql_runner.rb')
require_relative('artist.rb')

class Album

  attr_reader(:id)
  attr_accessor(:title, :genre, :artist_id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums (title, genre, artist_id)
    VALUES ($1, $2, $3)
    RETURNING id"
    values = [@title, @genre, @artist_id]
    album_hash = returned_array[0]
    id_string = album_hash['id']
    @id = id_string.to_i
  end


  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end








end
