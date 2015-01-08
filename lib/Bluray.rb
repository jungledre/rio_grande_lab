require_relative 'Item.rb'
class Bluray < Item

  attr_accessor :name, :price, :runtime, :director, :producer

  def initialize name, price, runtime, director, producer
    super(name,price)
    @runtime = 0
    @director = ""
    @producer = ""
  end
end
