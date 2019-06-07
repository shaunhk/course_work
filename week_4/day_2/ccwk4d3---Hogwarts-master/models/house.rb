require_relative('../db/sql_runner')

class House

  attr_reader :id, :name, :logo

  def initialize(options)
    @name = options['name']
    @logo = options['logo']
    @id = options['id'].to_i if options['id']
  end

  def self.delete_all
    sql = 'DELETE FROM houses;'
    SqlRunner.run(sql)
  end

  def save()
    sql = "INSERT INTO houses (name, logo) VALUES ($1, $2)
    RETURNING id;"
    values = [@name, @logo]
    house = SqlRunner.run(sql, values)
    @id = house.first()['id'].to_i
  end

  def self.find_all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    return houses.map { |house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)[0]
    return House.new(house)
  end

end
