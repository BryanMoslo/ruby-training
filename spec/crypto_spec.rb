require 'spec_helper'

describe CryptoTool do
  it "generates a different string than passed" do
    CryptoTool.encrypt("casa", 1).wont_equal "casa"
  end

  it "generates a string based on string rotation" do
    CryptoTool.encrypt("casa", 1).must_equal "b9r9"
  end

  it "replaces special characters by leaving them as they are" do
    CryptoTool.encrypt("casá", 1).must_equal "b9rá"
  end

  it "swaps cases for uppercase strings" do
    CryptoTool.encrypt("CASA", 1).must_equal "b9r9"
  end

  it "rotates randomly the characters if no parameter passed" do
    CryptoTool.encrypt("CASA").wont_equal "CASA"
  end
end
