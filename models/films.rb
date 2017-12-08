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
  # def save()
  #
  # end

  # Read records
  # def self.all()
  #
  # end
  #
  # # Delete records
  # def self.delete_all()
  #
  # end

end
