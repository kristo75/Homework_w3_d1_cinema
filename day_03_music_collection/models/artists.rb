require('pg')
require_relative('../db/sqlrunner.rb')

class Artists

  attr_accessor :first_name, :last_name
  attr_reader :id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @first_name = options ['first_name']
    @last_name = options ['last_name']
  end

  def save()

  end

end
