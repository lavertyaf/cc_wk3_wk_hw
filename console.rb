require('pry')
require_relative('models/customer')
require_relative('models/ticket')
require_relative('models/film')
require_relative('models/screening')

Customer.delete_all()
Ticket.delete_all()
Film.delete_all()


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

  screening1 = Screening.new({
    'film_id' => film1.id,
    'film_time' => '2018-02-02 10:00'
    })
  screening1.save

  screening2 = Screening.new({
    'film_id' => film1.id,
    'film_time' => '2018-02-02 13:00'
    })
  screening2.save

  screening3 = Screening.new({
    'film_id' => film1.id,
    'film_time' => '2018-02-02 17:00'
    })
  screening3.save

  screening4 = Screening.new({
    'film_id' => film2.id,
    'film_time' => '2018-02-02 11:00'
    })
  screening4.save

  screening5 = Screening.new({
    'film_id' => film2.id,
    'film_time' => '2018-02-02 13:30'
    })
  screening5.save

  screening6 = Screening.new({
    'film_id' => film3.id,
    'film_time' => '2018-02-02 10:30'
    })
  screening6.save

  screening7 = Screening.new({
    'film_id' => film3.id,
    'film_time' => '2018-02-02 13:45'
    })
  screening7.save

  screening8 = Screening.new({
    'film_id' => film3.id,
    'film_time' => '2018-02-02 17:30'
    })
  screening8.save

  screening9 = Screening.new({
    'film_id' => film3.id,
    'film_time' => '2018-02-02 20:45'
    })
  screening9.save

ticket1 = Ticket.new({
  'customer_id' => customer1.id, 'film_id' => film1.id,
  'screening_id' => screening1.id
    })

ticket2 = Ticket.new({
  'customer_id' => customer1.id, 'film_id' => film2.id,
  'screening_id' => screening1.id
  })

ticket3 = Ticket.new({
  'customer_id' => customer1.id, 'film_id' => film3.id,
  'screening_id' => screening1.id
  })

ticket4 = Ticket.new({
  'customer_id' => customer2.id, 'film_id' => film1.id,
  'screening_id' => screening1.id
  })

ticket5 = Ticket.new({
  'customer_id' => customer2.id, 'film_id' => film3.id,
  'screening_id' => screening1.id
  })

ticket6 = Ticket.new({
  'customer_id' => customer3.id, 'film_id' => film2.id,
  'screening_id' => screening1.id
  })

ticket7 = Ticket.new({
  'customer_id' => customer3.id, 'film_id' => film1.id,
  'screening_id' => screening1.id
  })

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()
ticket5.save()
ticket6.save()
ticket7.save()

p customer1
puts ""
customer1.name = 'Kathryn'
customer1.update
p customer1
puts ""

p film1
puts ""
film1.title = 'Mamma Mia 2'
film1.update
p film1
puts ""

p ticket7
puts ""
ticket7.film_id = film3.id
ticket7.update
p ticket7

puts ""
p film1.all_attendees
puts ""
p customer2.all_films_watched
puts ""
p customer2.tickets_bought
puts ""
p film3.how_many_tickets_sold
puts ""
p customer1.reduce_wallet(customer1, film2)
customer1.update
puts ""
