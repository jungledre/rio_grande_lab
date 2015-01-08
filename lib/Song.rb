require_relative 'DigitalItem.rb'
class Song < DigitalItem

  attr_accessor :name, :price, :artist, :runtime

  def initialize name, price, artist, runtime
    super(name,price)
    @artist = ""
    @runtime = 0
  end
end
