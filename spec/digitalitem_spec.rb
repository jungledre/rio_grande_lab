require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @digitalitem = DigitalItem.new("Generic DigitalItem",1.99)
  end

  describe "Initialization" do
    it "is an instance of the DigitalItem class" do
      expect(@digitalitem).to be_instance_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@digitalitem.name).to eq("Generic DigitalItem")
    end
    it "is assigned a price" do
      expect(@digitalitem.price).to eq(1.99)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@digitalitem.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @digitalitem.name="New Name"
      expect(@digitalitem.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digitalitem.price=44.99
      expect(@digitalitem.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@digitalitem.description).to eq("")
      @digitalitem.description="test"
      expect(@digitalitem.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should not be able to stock" do
      result = @digitalitem.stock 5
      expect(result).to eq(false)
      expect(@digitalitem.quantity).to eq(1)
    end
    it "should be able to sell digitalitems and not update quantity" do
      result = @digitalitem.sell 3
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end
  end

end
