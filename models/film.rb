require_relative("../db/sql_runner")

class Film

attr_reader :id
attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @price = options['price'].to_i
  end

  def save()
    sql = "INSERT INTO films (title, price)
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@title, @price]
    film = SqlRunner.run(sql, values).first
    @id = film['id'].to_i
  end

  def update()
    sql = "UPDATE films SET (title, price) = ($1, $2) WHERE id = $3"
    values = [@title, @price, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM films"
    film_hashes = SqlRunner.run(sql)
    film_objects = film_hashes.map{ |film| Film.new(film)}
    return film_objects
  end

  def delete()
    sql = "DELETE * FROM films WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

  def all_attendees()
    sql = "SELECT customers.* FROM customers INNER JOIN tickets ON customers.id = tickets.customer_id WHERE film_id = $1"
    values = [@id]
    attendee_data = SqlRunner.run(sql, values)
    return attendee_data.map{ |customer|  Customer.new(customer)}
  end

  def how_many_tickets_sold()
    sql = "SELECT * FROM customers INNER JOIN tickets ON tickets.customer_id = customerS.id WHERE film_id = $1"
    values = [@id]
    ticket_data = SqlRunner.run(sql, values)
    data = ticket_data.map{ |film| Film.new(film) }
    return data.length
  end

end
