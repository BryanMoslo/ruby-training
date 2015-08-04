require 'spec_helper'

describe FooBar do
  it "returns Foo if the number is divided exactly by 3 " do
    FooBar.answer_to(3).must_equal("Foo")
  end

  it "returns Bar if the number is divided exactly by 5 " do
    FooBar.answer_to(10).must_equal("Bar")
  end

  it "returns FooBar if the number is divided exactly by 5 and 3 " do
    FooBar.answer_to(15).must_equal("FooBar")
  end

  it "returns the number if the number is not divided exactly by 3 or 5" do
    FooBar.answer_to(0).must_equal("FooBar")
  end

  it "returns the number if the number is not divided exactly by 3 or 5" do
    FooBar.answer_to(8).must_equal("8")
  end

  it "returns FooBar if the number is divided exactly by 5 and 3" do
    FooBar.answer_to(true).must_equal("true")
  end
end
