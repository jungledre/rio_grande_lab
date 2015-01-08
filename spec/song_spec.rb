require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new "Generic Song", 1.99, "Generic Artist",100
  end

  describe "Initialization" do
    it "is an instance of the DigitalItem class" do
      expect(@song.class.superclass).to eq(DigitalItem)
    end
    it "is assigned a name" do
      expect(@song.name).to eq("Generic Song")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(1.99)
    end
  end

  describe "Extended" do
    it "is an instance of the DigitalItem class" do
      expect(Song.superclass).to eq(DigitalItem)
    end
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @song.name="New Name"
      expect(@song.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @song.price=12.34
      expect(@song.price).to eq(12.34)
    end
    it "should be able to get and set artist" do
      @song.artist="New Artist"
      expect(@song.artist).to eq("New Artist")
    end
    it "should be able to get and set runtime" do
      @song.artist=60
      expect(@song.artist).to eq(60)
    end
  end

end
