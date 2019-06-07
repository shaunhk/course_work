require('pg')

class PizzaOrder

  attr_accessor :first_name, :last_name, :quantity, :topping
  attr_reader :id

  def initialize(options)
      @id = options['id'].to_i if options['id']
      @first_name = options['first_name']
      @last_name = options['last_name']
      @quantity = options['quantity'].to_i()
      @topping = options['topping']
  end

  def save()
    db = PG.connect({
      dbname: 'pizza_shop',
      host: 'localhost'
      })
      #This connects the function to the pizza_shop database using our PG gem
    sql = "INSERT INTO pizza_orders
        (first_name,
          last_name,
          quantity,
          topping)
          VALUES ($1, $2, $3, $4) RETURNING *"
          values = [@first_name, @last_name, @quantity, @topping]
          #The above 2 lines help to ensure that all values are string or integers preventing SQL injections
          db.prepare("save", sql)
          result = db.exec_prepared("save", values)
          @id = result[0]['id'].to_i()
          db.close()
  end

  def delete()
    db= PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "DELETE FROM pizza_orders WHERE ID = $1"
    values = [@id]
    db.prepare("delete_one", sql)
    db.exec_prepared("delete_one", values)
    db.close()
  end

  def update()
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "UPDATE pizza_orders SET
      (first_name, last_name, quantity, topping) = ($1, $2, $3, $4) WHERE id =
      $5"
    values = [@first_name, @last_name, @quantity, @topping, @id]
    db.prepare("update", sql)
    db.exec_prepared("update", values)
    db.close()
  end

  def PizzaOrder.all()
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "SELECT * from pizza_orders"
    db.prepare("all", sql)
    orders = db.exec_prepared("all")
    db.close()
    return orders.map {|order| PizzaOrder.new(order)}
  end

  def PizzaOrder.delete_all()
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "DELETE FROM pizza_orders"
    db.prepare("delete_all", sql)
    db.exec_prepared("delete_all")
    db.close()
  end

end
