require('pg')
require_relative('../db/sql_runner')

class Movie

  attr_accessor :title, :genre, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
  end

  def save()
    sql = "INSERT INTO movies
      (title,
      genre)
      VALUES
      ($1, $2)
      RETURNING id;
      "
    values = [@title, @genre]
    movie = SqlRunner.run(sql, values).first
    @id = movie['id'].to_i
  end

  def update()
    sql = "UPDATE movies SET (title, genre)
    = ($1, $2)
    WHERE id = $3"
    values = [@title, @genre, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM movies"
    movies = SqlRunner.run(sql)
    movie_objects = movies.map{|movie| Movie.new(movie)}
    return movie_objects
  end

  def self.delete_all()
    sql = "DELETE FROM movies;"
    SqlRunner.run(sql)
  end

end
