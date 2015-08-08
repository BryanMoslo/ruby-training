require 'spec_helper'
describe Plates::Comparator do

  describe "plate_to_decimal" do
    it "should take a plate and return its numeric value" do
      Plates::Comparator.plate_to_decimal("AAA123").must_equal 123
    end

    it "should take a plate and return its numeric value" do
      Plates::Comparator.plate_to_decimal("ABA123").must_equal 26123
    end

    it "should take a plate and return its numeric value" do
      Plates::Comparator.plate_to_decimal("BAA123").must_equal 676123
    end

    it "should reject invalid plates with an exception" do
      proc {Plates::Comparator.plate_to_decimal("BAA13")}.must_throw ArgumentError
    end
  end

  describe "plates distance" do
    it "should determine the distance between 2 plates" do
      Plates::Comparator.distance_between("AAA000", "AAA999").must_equal 999
    end

    it "should determine the distance between 2 plates" do
      Plates::Comparator.distance_between("AAB000", "AAC999").must_equal 1999
    end

    it "should determine the distance between 2 plates" do
      Plates::Comparator.distance_between("AAA000", "ZZZ999").must_equal 17575999
    end

    it "should determine the distance between 2 plates" do
      Plates::Comparator.distance_between("AAA999", "AAB000").must_equal 1
    end

    it "should determine the distance between 2 plates" do
      Plates::Comparator.distance_between("AAB001", "AAA999").must_equal 2
    end

    it "should throw argumentError if we pass an invalid plate" do
      proc{Plates::Comparator.distance_between("AS", "AAC999")}.must_throw ArgumentError
    end
  end
end

describe Plates::Validator do
  describe "#valid?" do
    it "should return false if plate is invalid" do
      Plates::Validator.valid?("AA123").must_equal false
    end

    it "should return false if plate is invalid" do
      Plates::Validator.valid?(111).must_equal false
    end

    it "should return true if plate is valid" do
      Plates::Validator.valid?("AAA123").must_equal true
    end
  end
end
