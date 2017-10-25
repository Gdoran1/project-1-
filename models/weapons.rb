require_relative('../db/sql_runner')
require_relative('manufacturer.rb')

class Weapon

  attr_reader :name, :type, :manufacturer_id,
  :cost_price, :retail_price, :quantity, :id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @type = options['type']
    @manufacturer_id = options['manufacturer_id'].to_i
    @cost_price = options['cost_price'].to_i
    @retail_price = options['retail_price'].to_i
    @quantity = options['quantity'].to_i
  end

  def save()
    sql = "INSERT INTO weapons(name, type, manufacturer_id, cost_price, retail_price, quantity)
    values ($1, $2, $3, $4, $5, $6) RETURNING * "
    values = [@name, @type, @manufacturer_id, @cost_price, @retail_price, @quantity]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM weapons"
    values = []
    weapons = SqlRunner.run(sql, values)
    result = weapons.map { |weapon| Weapon.new( weapon ) }
    return result
  end

  def self.find()
    sql = "SELECT * FROM weapons
    WHERE id = $1"
    values = [id]
    weapon = SqlRunner.run(sql, values)
    result = Weapon.new( weapon.first )
    return result
  end

  def self.delete_all()
    sql = "DELETE * FROM weapons"
    values = []
    results = SqlRunner.run( sql, values )
    return results.map {|weapon| Weapon.new( weapon )}
  end

  def check_stock
    if @quantity < 2
      return "-LOW-"
    elsif @quantity > 4
      return "-HIGH-"
    else
      return "-MEDIUM-"
    end
  end

  def markup_value
  result =  @retail_price - @cost_price
    return (result / @cost_price) * 100
  end

end
