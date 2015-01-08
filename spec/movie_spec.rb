# require_relative 'spec_helper'
# require_relative '../lib/Movie'

# describe Movie do

#   before(:context) do
#     @cd = Movie.new "Generic Movie", 9.99, 10, "Generic Director",100
#   end

#   describe "Initialization" do
#     it "is an instance of the Item class" do
#       expect(@cd.class.superclass).to eq(Item)
#     end
#     it "is assigned a name" do
#       expect(@cd.name).to eq("Generic Title")
#     end
#     it "is assigned a price" do
#       expect(@cd.price).to eq(9.99)
#     end
#   end

#   describe "Extended" do
#     it "is an instance of the Item class" do
#       expect(Movie.superclass).to eq(Item)
#     end
#   end

#   describe "Accessors" do
#     it "should be able to get and set name" do
#       @cd.name="New Name"
#       expect(@cd.name).to eq("New Name")
#     end
#     it "should be able to get and set price" do
#       @cd.price=12.34
#       expect(@cd.price).to eq(12.34)
#     end
#     it "should be able to get and set tracks" do
#       @cd.tracks=12
#       expect(@cd.tracks).to eq(12)
#     end
#     it "should be able to get and set artist" do
#       @cd.artist="New Director"
#       expect(@cd.artist).to eq("New Director")
#     end
#     it "should be able to get and set runtime" do
#       @cd.artist=60
#       expect(@cd.artist).to eq(60)
#     end
#   end

# end
