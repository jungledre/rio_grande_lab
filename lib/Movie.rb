require_relative 'DigitalItem.rb'
class Movie < DigitalItem

  attr_accessor :name, :price, :runtime, :director, :producer

  def initialize name, price, runtime, director, producer
    super(name,price)
    @runtime = 0
    @director = ""
    @producer = ""
  end
end
