require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new "Generic Book", 1.99, 100, "Generic Author"
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@book.class.superclass).to eq(Item)
    end
    it "is assigned a name" do
      expect(@book.name).to eq("Generic Book")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(1.99)
    end
  end

  describe "Extended" do
    it "is an instance of the Item class" do
      expect(Book.superclass).to eq(Item)
    end
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @book.name="New Name"
      expect(@book.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @book.price=12.34
      expect(@book.price).to eq(12.34)
    end
    it "should be able to get and set pages" do
      @book.pages=123
      expect(@book.pages).to eq(123)
    end
    it "should be able to get and set author" do
      @book.author="New Author"
      expect(@book.author).to eq("New Author")
    end
  end
end
