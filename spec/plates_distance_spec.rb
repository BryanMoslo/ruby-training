# require 'spec_helper'
#
# describe PlatesDistance do
#   it "returns the distance between two plates with same letters" do
#     distance = PlatesDistance.distance("AAA000", "AAA002")
#     distance.must_equal(2)
#   end
#
#   it "returns the distance between two plates with same numbers" do
#     distance = PlatesDistance.distance("AAA000", "AAB000")
#     distance.must_equal(999)
#   end
#
#   it "returns the distance between two plates with different letters and numbers" do
#     distance = PlatesDistance.distance("AAA000", "AAB100")
#     distance.must_equal(1099)
#   end
#
#   it "returns an error if plates aren't valid" do
#     distance = PlatesDistance.distance("AAAAAA", "123AAA")
#     distance.must_equal("ERROR - Plates not valid")
#   end
#
#   it "returns an error if plates are in incorect order" do
#     distance = PlatesDistance.distance("ZZZ000", "AAA000")
#     distance.must_equal("ERROR - Plates not valid")
#   end
# end
