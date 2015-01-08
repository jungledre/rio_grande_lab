require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    # attr_accessor :name, :price, :runtime, :director, :producer
    @movie = Movie.new "Generic Movie", 9.99, 100, "Generic Director", "Generic Producer"
  end

  describe "Initialization" do
    it "is an instance of the DigitalItem class" do
      expect(@movie.class.superclass).to eq(DigitalItem)
    end
    it "is assigned a name" do
      expect(@movie.name).to eq("Generic Movie")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(9.99)
    end
  end

  describe "Extended" do
    it "is an instance of the DigitalItem class" do
      expect(Movie.superclass).to eq(DigitalItem)
    end
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @movie.name="New Name"
      expect(@movie.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @movie.price=12.34
      expect(@movie.price).to eq(12.34)
    end
    it "should be able to get and set runtime" do
      @movie.runtime=123
      expect(@movie.runtime).to eq(123)
    end
    it "should be able to get and set director" do
      @movie.director="New Director"
      expect(@movie.director).to eq("New Director")
    end
    it "should be able to get and set producer" do
      @movie.producer="New Producer"
      expect(@movie.producer).to eq("New Producer")
    end
  end
end
