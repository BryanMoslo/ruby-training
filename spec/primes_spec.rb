require 'spec_helper'

describe PrimesDetector do
  # context "#prime?" do
    it "returns true if is prime" do
      prime = PrimesDetector.prime?(2)
      prime.must_equal(true)
    end

    it "returns false if its not prime" do
      prime = PrimesDetector.prime?(4)
      prime.must_equal(false)
    end

    it "returns false if its not prime" do
      prime = PrimesDetector.prime?(12)
      prime.must_equal(false)
    end

    it "returns false if its not prime" do
      prime = PrimesDetector.prime?(13)
      prime.must_equal(true)
    end

    it "returns false if its not prime" do
      prime = PrimesDetector.prime?("A")
      prime.must_equal(false)
    end
  # end

  # context "#exact_divisors_for" do
    it "returns the number of divisors for 2" do
      divisors = PrimesDetector.exact_divisors_for 2
      divisors.must_equal 2
    end

    it "returns the number of divisors for 2" do
      divisors = PrimesDetector.exact_divisors_for 0
      divisors.must_equal 0
    end

    it "doesn't break with letters" do
      divisors = PrimesDetector.exact_divisors_for "A"
      divisors.must_equal 0
    end
  # end

end
