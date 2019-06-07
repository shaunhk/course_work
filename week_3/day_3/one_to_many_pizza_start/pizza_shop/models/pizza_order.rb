require('pg')
require_relative('customer.rb')

class PizzaOrder

  attr_accessor :topping, :quantity, :customer_id
  attr_reader :id

  def initialize(options)
    @customer_id = options['customer_id'].to_i
    @topping = options['topping']
    @quantity = options['quantity'].to_i
    @id = options['id'].to_i if options['id']
  end
  #Getting hash from sql and forming into instance class

  def customer()
    sql = "SELECT * FROM customers WHERE id= $1"
    values = [@customer_id]
    results = SqlRunner.run(sql, values)[0]
    return Customer.new(results)
  end

  def save()
    sql = "INSERT INTO pizza_orders
    (
      customer_id,
      topping,
      quantity
    ) VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    #providing sql code in function so when called it will run.
    values = [@customer_id, @topping, @quantity]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def update()
    sql = "
    UPDATE pizza_orders SET (
      customer_id,
      topping,
      quantity
    ) =
    (
      $1,$2, $3
    )
    WHERE id = $4"
    values = [@customer_id, @topping, @quantity, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM pizza_orders where id = $1"
    values = [@id]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.find(id)
    sql = "SELECT * FROM pizza_orders WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    order_hash = results[0]
    order = PizzaOrder.new(order_hash)
    return order
  end

  def self.delete_all()
    sql = "DELETE FROM pizza_orders"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM pizza_orders"
    orders_hashes = SqlRunner.run(sql)
    orders = orders_hases.map { |order| PizzaOrder.new(order) }
    return orders
  end

end
