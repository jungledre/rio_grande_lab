require_relative 'spec_helper'
require_relative '../lib/EBook'

describe Ebook do

  before(:context) do
    @ebook = Ebook.new "Generic Ebook", 1.99, 100, "Generic Author"
  end

  describe "Initialization" do
    it "is an instance of the DigitalItem class" do
      expect(@ebook.class.superclass).to eq(DigitalItem)
    end
    it "is assigned a name" do
      expect(@ebook.name).to eq("Generic Ebook")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(1.99)
    end
  end

  describe "Extended" do
    it "is an instance of the DigitalItem class" do
      expect(Ebook.superclass).to eq(DigitalItem)
    end
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @ebook.name="New Name"
      expect(@ebook.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @ebook.price=12.34
      expect(@ebook.price).to eq(12.34)
    end
    it "should be able to get and set pages" do
      @ebook.pages=123
      expect(@ebook.pages).to eq(123)
    end
    it "should be able to get and set author" do
      @ebook.author="New Author"
      expect(@ebook.author).to eq("New Author")
    end
  end
end
