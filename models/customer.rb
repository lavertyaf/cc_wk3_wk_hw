require_relative("../db/sql_runner")

class Customer
  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @funds = options['budget'].to_i    
  end


end
