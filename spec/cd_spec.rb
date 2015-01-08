require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new "Generic CD", 9.99, 10, "Generic Artist",100
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@cd.class.superclass).to eq(Item)
    end
    it "is assigned a name" do
      expect(@cd.name).to eq("Generic CD")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(9.99)
    end
  end

  describe "Extended" do
    it "is an instance of the Item class" do
      expect(Cd.superclass).to eq(Item)
    end
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @cd.name="New Name"
      expect(@cd.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @cd.price=12.34
      expect(@cd.price).to eq(12.34)
    end
    it "should be able to get and set tracks" do
      @cd.tracks=12
      expect(@cd.tracks).to eq(12)
    end
    it "should be able to get and set artist" do
      @cd.artist="New Artist"
      expect(@cd.artist).to eq("New Artist")
    end
    it "should be able to get and set runtime" do
      @cd.artist=60
      expect(@cd.artist).to eq(60)
    end
  end

end
