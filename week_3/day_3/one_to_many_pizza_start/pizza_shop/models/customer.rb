require('pg')
require_relative('../db/sql_runner.rb')
require_relative('pizza_order.rb')

class Customer
  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def pizza_orders()
    sql = "SELECT * FROM pizza_orders WHERE customer_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    orders = results.map{ |order| PizzaOrder.new(order)}
    return orders
  end

  def save
    sql = "INSERT INTO customers (name) VALUES ($1) RETURNING id"
    values = [@name]
    result = SqlRunner.run(sql, values)
    id_string = result[0]['id']
    @id = id_string.to_i
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM customers;"
    customers = SqlRunner.run(sql)
    return customers.map {|customer| Customer.new(customer)}
  end

end
