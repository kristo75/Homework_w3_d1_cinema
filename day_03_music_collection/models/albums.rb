require('pg')
require_relative('../db/sqlrunner.rb')

class Albums

  attr_accessor :album_name, :genre
  attr_reader :id, :artist_id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @artist_id = options ['artist_id'].to_i
    @album_name = options ['album_name']
    @genre = options ['genre']
  end

end
