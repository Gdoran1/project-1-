require_relative('../db/sql_runner')
require_relative('weapons.rb')

class Manufacturer

attr_reader :name, :id

  def initialize(options)
    @id = options['id'].to_i
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

  def self.find()
    sql = "SELECT * FROM manufacturer WHERE id = $1 "
    values = [id]
    manufacturer = SqlRunner.run(sql, values)
    result = Manufacturer.new( manufacturer.first )
    return result
  end

  def self.delete_all()
    sql = "DELETE * FROM manufacturer"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map {|manufacturer| Manufacturer.new( manufacturer )}
  end
end
