require('pg')
require_relative('../db/sqlrunner.rb')

class Albums

  attr_accessor(:album_name, :genre)
  attr_reader(:id, :artist_id)

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @artist_id = options ['artist_id'].to_i
    @album_name = options ['album_name']
    @genre = options ['genre']
  end

  def save()
    sql = "INSERT INTO albums  (album_name, genre, artist_id)
    VALUES
    ($1, $2, $3)
    RETURNING * "

    values = [@album_name, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def Albums.all()
    albums = SqlRunner.run("SELECT * FROM albums")
    return albums.map {|album| Albums.new(album)}
  end

end
