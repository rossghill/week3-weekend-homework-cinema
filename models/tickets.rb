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
  # def save()
  #
  # end

  # Read records
  # def self.all()
  #
  # end

  # Delete records
  # def self.delete_all()
  #
  # end


end
