require_relative('../db/sql_runner')
require_relative('weapons.rb')
require_relative('type.rb')

class Manufacturer

attr_reader :name, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save ()
    sql = "INSERT INTO manufacturer(name)
    values ($1) RETURNING * "
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM manufacturer"
    values = []
    manufacturer = SqlRunner.run(sql, values)
    result = manufacturer.map { |manufacturer| Manufacturer.new( manufacturer ) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM manufacturer WHERE id = $1 "
    values = [id]
    manufacturer = SqlRunner.run(sql, values)
    result = Manufacturer.new( manufacturer.first )
    return result
  end

  def self.delete ()
    sql = "DELETE FROM manufacturer WHERE id = $1"
    values = [@id]
    results = SqlRunner.run( sql, values )
  end
end
