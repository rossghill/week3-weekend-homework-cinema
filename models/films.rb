require_relative('../db/sql_runner')

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
    @price = options['price'].to_i
  end

  # Create/ update record
  def save()
    sql = "INSERT INTO films (title, price)
          VALUES ($1, $2)
          RETURNING id;"
    values = [@title, @price]
    users = SqlRunner.run(sql, values)[0]
    @id = users['id'].to_i
  end

  # Read records
  def self.all()
    sql = "SELECT * FROM films"
    all_films_hash = SqlRunner.run(sql)
    result = all_films_hash.map { |film| Film.new(film) }
    return result
  end
  #
  # # Delete records
  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def delete_film()
    sql = "DELETE FROM films
          WHERE id = $1"
    values = [@id]
    hash_containing_id = SqlRunner.run(sql, values)
  end

end
