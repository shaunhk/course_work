require('pg')
require_relative('../db/sql_runner')

class Casting

  attr_reader :id
  attr_accessor :fee, :movie_id, :star_id

  def initialize(options)
    @movie_id = options['movie_id'].to_i
    @star_id = options['star_id'].to_i
    @fee = options['fee'].to_i
    @id = options['id'].to_i if options['id']
  end

  def save()
    sql = "INSERT INTO castings
    (fee, movie_id, star_id)
    VALUES
    ($1, $2, $3)
    RETURNING id;"
    values = [@fee, @movie_id, @star_id]
    casting = SqlRunner.run(sql, values).first
    @id = casting['id'].to_i
  end

  def update()
    sql = "UPDATE castings
    SET (fee, movie_id, star_id)
    =
    ($1, $2, $3)
    WHERE id = $4"
    values = [@fee, @movie_id, @]
  end

  def self.delete_all()
    sql = "DELETE FROM castings"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM castings"
    castings = SqlRunner.run(sql)
    result = castings.map{|casting| Casting.new(casting)}
    return result
  end

end
