fruits = ['apple', 'banana', 'grape', 'orange']
p fruits

p fruits[-3]
p fruits[-4]
p fruits[-1]

p fruits.first(2)
p fruits.last(2)

my_array = []
my_other_array = Array.new()

fruits[0] = 'mango'
#
# fruits[100] = 'peach'
fruits.push('pear')

fruits << 'lemon'

fruits.pop()

fruits.shift()

# fruits.unshift('apple')

p fruits

 fruits_numbers = ['apple', 10, 'banana']

 numbers = [1, 3, 4, [5, 8]]

def double
  numbers = [1, 3, 4, [5, 8]]
  numbers.each {|x| print x * 2 }
end
p numbers

return double
