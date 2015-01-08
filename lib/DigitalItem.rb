require_relative 'Item.rb'
class DigitalItem < Item

  attr_accessor :name, :price, :description, :quantity

  def initialize name, price
    super(name,price)
    @description = ""
    @quantity = 1
  end
end
