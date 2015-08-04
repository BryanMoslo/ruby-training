require 'spec_helper'
describe PerfectDetector do

  it "returns false if the sum of number's divisors is not the number" do
    [ 2, 3, 7, 100, 20 ].each do |number|
      PerfectDetector.is_perfect?(number).must_equal false
    end
  end

  it "returns true if the sum of number's divisors is the number" do
    PerfectDetector.is_perfect?(6).must_equal true
  end
end
