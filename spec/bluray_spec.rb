require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    # attr_accessor :name, :price, :runtime, :director, :producer
    @bluray = Bluray.new "Generic Bluray", 9.99, 100, "Generic Director", "Generic Producer"
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@bluray.class.superclass).to eq(Item)
    end
    it "is assigned a name" do
      expect(@bluray.name).to eq("Generic Bluray")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(9.99)
    end
  end

  describe "Extended" do
    it "is an instance of the Item class" do
      expect(Bluray.superclass).to eq(Item)
    end
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @bluray.name="New Name"
      expect(@bluray.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @bluray.price=12.34
      expect(@bluray.price).to eq(12.34)
    end
    it "should be able to get and set runtime" do
      @bluray.runtime=123
      expect(@bluray.runtime).to eq(123)
    end
    it "should be able to get and set director" do
      @bluray.director="New Director"
      expect(@bluray.director).to eq("New Director")
    end
    it "should be able to get and set producer" do
      @bluray.producer="New Producer"
      expect(@bluray.producer).to eq("New Producer")
    end
  end
end
