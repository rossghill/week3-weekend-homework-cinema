require ('./models/customer.rb')
require ('./models/films.rb')
require ('./models/tickets.rb')

require ('pry-byebug')

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

customer1 = Customer.new({"name" => "Ross", "funds" => "19.50"})
customer1.save()
customer2 = Customer.new({"name" => "Michael", "funds" => "42.00"})
customer2.save()
customer3 = Customer.new({"name" => "Richard", "funds" => "23.00"})
customer3.save()

film1 = Film.new("title" => "The Room", "price" => "9.00")
film1.save()
film2 = Film.new("title" => "The Disaster Artist", "price" => "11.00")
film2.save()

ticket1 = Ticket.new("customer_id" => customer1.id, "film_id" => film1.id)
ticket1.save()
ticket2 = Ticket.new("customer_id" => customer1.id, "film_id" => film2.id)
ticket2.save()

customers = Customer.all
all_films = Film.all()
all_tickets = Ticket.all()


# customer3 = Customer.new({"name" => "Richard", "funds" => "23.00"})
# customer3.save()
#

#


binding.pry
nil
