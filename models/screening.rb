require_relative("../db/sql_runner")

class Screening

attr_reader :id
attr_accessor :time

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @time = options['time']
  end

  # def save()
  #   sql = INSERT INTO
  #   values =
  #
  # end

end
