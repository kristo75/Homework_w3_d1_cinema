require('pg')
require_relative('../db/sqlrunner.rb')

class Artists

  attr_accessor(:first_name, :last_name)
  attr_reader(:id)

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @first_name = options ['first_name']
    @last_name = options ['last_name']
  end

  def save()
    sql = "INSERT INTO artist (first_name, last_name)
    VALUES
    ($1, $2)
    RETURNING * "

    values = [@first_name, @last_name ]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def Artists.all()
    artists = SqlRunner.run("SELECT * FROM artist")
    return artists.map {|artist| Artists.new(artist)}
  end

end
