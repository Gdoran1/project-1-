require_relative('../db/sql_runner')
require_relative('weapons.rb')
require_relative('manufacturer.rb')

class Type

attr_reader :name, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save ()
    sql = "INSERT INTO type(name) values ($1) RETURNING * "
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM type"
    values = []
    type = SqlRunner.run(sql, values)
    result = type.map { |type| Type.new( type ) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM type WHERE id = $1 "
    values = [id]
    type = SqlRunner.run(sql, values)
    result = Type.new( type.first )
    return result
  end

  def self.delete_all()
    sql = "DELETE * FROM type"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map {|type| Type.new( type )}
  end
end
