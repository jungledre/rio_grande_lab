require_relative 'Item.rb'
class Cd < Item

  attr_accessor :name, :price, :tracks, :artist, :runtime

  def initialize name, price, tracks, artist, runtime
    super(name,price)
    @tracks = 0
    @artist = ""
    @runtime = 0
  end
end
