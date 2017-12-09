require_relative('../db/sql_runner')

class Customer

attr_reader :id
attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @funds = options['funds'].to_i
  end


  # Create/ update record
  def save()
    sql = "INSERT INTO customers (name, funds)
          VALUES ($1, $2)
          RETURNING id;"
    values = [@name, @funds]
    # pg_result = SqlRunner.run(sql, values)
    # # binding.pry
    # hash_containing_id = pg_result[0]
    # # binding.pry
    # id_string = hash_containing_id['id']
    # # binding.pry
    # id_integer = id_string.to_i()
    # # binding.pry
    # @id = id_integer
    # binding.pry
    hash_containing_id = SqlRunner.run(sql, values)[0]
    @id = hash_containing_id['id'].to_i
  end

  # Read records
  def self.all()
    sql = "SELECT * FROM customers"
    all_customers = SqlRunner.run(sql)
    result = all_customers.map { |customer| Customer.new(customer) }
    return result
  end
  #
  # # Delete records
  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def delete_customer()
    sql = "DELETE FROM customers
          WHERE id = $1"
    values = [@id]
    hash_containing_id = SqlRunner.run(sql, values)
  end



end
