require_relative 'Item.rb'
class Book < Item

  attr_accessor :name, :price, :pages, :author

  def initialize name, price, pages, author
    super(name,price)
    @pages = 0
    @author = ""
  end
end
