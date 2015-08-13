require 'spec_helper'

describe Combinations do
  it "returns the possible conbinations" do
    combinations = Combinations.generate_combinations("love")
    combinations.count.must_equal(24)
  end

  it "returns the possible conbinations in group of n" do
    combinations = Combinations.generate_combinations("eat", 2)
    combinations[1].size.must_equal(2)
  end

  it "returns the possible conbinations for word if n > words length" do
    combinations = Combinations.generate_combinations("hola", 8)
    combinations[1].size.must_equal(4)
  end
  
  it "returns without repeating combinations" do
    combinations = Combinations.generate_combinations("hola")
    sample = combinations.delete("hola")
    result = combinations.include?(sample)
    result.must_equal false
  end
end
