require('pry')
require_relative('models/star.rb')
require_relative('models/casting.rb')
require_relative('models/movie.rb')

Casting.delete_all()
Movie.delete_all()
Star.delete_all()

movie1 = Movie.new({
  'title' => 'The Matrix',
  'genre' => 'Science Fiction'
  })
movie1.save()

star1 = Star.new({
  'first_name' => 'Keanu',
  'last_name' => 'Reeves'
  })
star1.save()

star2 = Star.new({
  'first_name' => 'Samuel',
  'last_name' => 'Jackson'
  })

star3 = Star.new({
  'first_name' => 'Willem',
  'last_name' => 'Dafoe'
  })

star2.save()
star3.save()

movie2 = Movie.new({
  'title' => 'John Wick',
  'genre' => 'Thriller'
  })
movie2.save()

casting1 = Casting.new({
  'fee' => 1502020,
  'movie_id' => movie1.id,
  'star_id' => star1.id
  })

casting2 = Casting.new({
  'fee' => 2010049,
  'movie_id' => movie1.id,
  'star_id' => star2.id
  })

casting3 = Casting.new({
  'fee' => 2105102,
  'movie_id' => movie2.id,
  'star_id' => star1.id
  })
casting1.save()
casting2.save()
casting3.save()
# p Casting.all()
# p Movie.all()
# p Star.all()
movie1.title = 'Matrix: The Documentary'
movie1.update()

binding.pry
nil
