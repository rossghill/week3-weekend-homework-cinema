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
    users = SqlRunner.run(sql, values)[0]
    @id = users['id'].to_i
  end

  # Read records
  # def self.all()
  #   sql = "SELECT * FROM customers"
  #   all_customers = SqlRunner.run(sql)
  #
  # end
  #
  # # Delete records
  # def self.delete_all()
  #
  # end

end
