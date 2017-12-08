require ('./models/customer.rb')
require ('./models/films.rb')
require ('./models/tickets.rb')

require ('pry-byebug')

customer1 = Customer.new({"name" => "Ross", "funds" => "19.5"})
customer1.save()
customer2 = Customer.new({"name" => "Michael", "funds" => "42.00"})
customer3 = Customer.new({"name" => "Richard", "funds" => "23.00"})

film1 = Film.new("title" => "The Room", "price" => "9.00")
film2 = Film.new("title" => "The Disaster Artist", "price" => "11.00")








binding.pry
nil
