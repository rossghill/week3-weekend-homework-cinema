require_relative('../db/sql_runner')

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i
    @customer_id = options['customer_id'].to_i
    @film_id = options['film_id'].to_i
  end

  # Create/ update record
  def save()
    sql = "INSERT INTO tickets (customer_id, film_id)
          VALUES ($1, $2)
          RETURNING id;"
    values = [@customer_id, @film_id]
    users = SqlRunner.run(sql, values)[0]
    @id = users['id'].to_i
  end

  # Read records
  def self.all()
    sql = "SELECT * FROM tickets"
    all_tickets_hash = SqlRunner.run(sql)
    result = all_tickets_hash.map { |ticket| Ticket.new(ticket) }
    return result
  end

  # Delete records
  # def self.delete_all()
  #
  # end


end
