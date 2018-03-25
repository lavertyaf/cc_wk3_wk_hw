require_relative("../db/sql_runner")

class Screening

attr_reader :id
attr_accessor :film_time, :film_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @film_id = options['film_id']
    @film_time = options['film_time']
  end

  def save()
    sql = "INSERT INTO screenings (film_id, film_time)
    VALUES ($1, $2)
    RETURNING *"
    values = [@film_id, @film_time]
    screening = SqlRunner.run(sql, values).first
    @id = screening['id'].to_i
  end

end
