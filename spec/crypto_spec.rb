require 'spec_helper'

describe CryptoTool do
  it "generates a different string than passed" do
    CryptoTool.encrypt("casa", 1).wont_equal "casa"
  end

  it "generates a string based on string rotation" do
    CryptoTool.encrypt("casa", 1).must_equal "b9r9"
  end

  it "replaces special characters by a *" do
    CryptoTool.encrypt("casá", 1).must_equal "b9r*"
  end

  it "swaps cases for uppercase strings" do
  end
end
