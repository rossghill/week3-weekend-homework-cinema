require ('./models/customer.rb')
require ('./models/films.rb')
require ('./models/tickets.rb')

require ('pry-byebug')

customer1 = Customer.new({"name" => "Ross", "funds" => "19.5"})
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







binding.pry
nil
