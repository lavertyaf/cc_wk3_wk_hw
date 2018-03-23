require('pry')
require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')

# Customer.delete_all()
# Ticket.delete_all()
# Film.delete_all()


customer1 = Customer.new({
  'name' => 'Roz',
  'funds' => 50
  })

customer2 = Customer.new({
  'name' => 'Laura',
  'funds' => 10
  })

customer3 = Customer.new({
  'name' => 'Andrea',
  'funds' => 25
  })

  customer1.save()
  customer2.save()
  customer3.save()

film1 = Film.new({
  'title' => 'The Greatest Showman',
  'price' => 9
  })

film2 = Film.new({
  'title' => 'Isle of Dogs',
  'price' => 8
  })

film3 = Film.new({
  'title' => 'I, Tonya',
  'price' => 10
  })

  film1.save()
  film2.save()
  film3.save()

ticket1 = Ticket.new({
  'customer_id' => customer1.id, 'film_id' => film1.id
    })

ticket2 = Ticket.new({
  'customer_id' => customer1.id, 'film_id' => film2.id
  })

ticket3 = Ticket.new({
  'customer_id' => customer1.id, 'film_id' => film3.id
  })

ticket4 = Ticket.new({
  'customer_id' => customer2.id, 'film_id' => film1.id
  })

ticket5 = Ticket.new({
  'customer_id' => customer2.id, 'film_id' => film3.id
  })

ticket6 = Ticket.new({
  'customer_id' => customer3.id, 'film_id' => film2.id
  })

ticket7 = Ticket.new({
  'customer_id' => customer3.id, 'film_id' => film3.id
  })

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()
ticket6.save()
ticket7.save()
