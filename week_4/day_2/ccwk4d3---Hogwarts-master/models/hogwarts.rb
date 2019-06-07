require_relative('../db/sql_runner.rb')

class Student

  attr_reader :id
  attr_accessor :first_name, :second_name, :house_id, :age

  def initialize(options)
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house_id = options['house_id'].to_i
    @age = options['age'].to_i
    @id = options['id'].to_i if options['id']
  end

  def save
    sql = "INSERT INTO students
    (first_name, second_name, house_id, age)
    VALUES ($1, $2, $3, $4)
    RETURNING id;"
    values = [@first_name, @second_name, @house_id, @age]
    student = SqlRunner.run(sql, values)
    @id = student.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    values = []
    SqlRunner.run(sql, values)
  end

  def self.view_all()
    sql = "SELECT * FROM students"
    values = []
    students = SqlRunner.run(sql, values)
    return students.map { |student| Student.new(student) }
  end

  def update()
    sql = "UPDATE students SET (first_name, second_name, house_id, age) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@first_name, @second_name, @house_id, @age, @id]
    SqlRunner.run(sql, values)
  end

  def self.find( id )
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values)[0]
    return Student.new(student)
  end

end
