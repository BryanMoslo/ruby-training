require 'spec_helper'
describe String do
  # context "#rotate" do

    it "rotates a passed string the number of times we send" do
      "abcde".rotate(1).must_equal("eabcd")
    end

    it "rotates with negative numbers by doing ABS on the times" do
      result = "abcde".rotate(-2)
      result.must_equal("deabc")
    end
  # end
end
