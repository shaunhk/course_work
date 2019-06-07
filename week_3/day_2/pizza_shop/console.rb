require('pry')
require_relative('models/pizza_order.rb')

PizzaOrder.delete_all()

order1 = PizzaOrder.new(
  {
    'first_name' => 'Colin',
    'last_name' => 'Bell',
    'quantity' => 2,
    'topping' => 'pineapple'
  }
)

order2 = PizzaOrder.new(
  {
    'first_name' => 'Louise',
    'last_name' => 'Reid',
    'quantity' => 1,
    'topping' => 'chicken'
  }
)

order1.save()
order2.save()
# order1.delete()
order1.last_name = 'Smith'
order1.update()

orders = PizzaOrder.all()

binding.pry
nil
