require 'spec_helper'

describe ColorGenerator do
  it "returns a color code if a name is pased" do
    color = ColorGenerator.generate_color("Mario")
    color.must_equal("#a00771")
  end

  it "returns a different color code if a similar name is pased" do
    color = ColorGenerator.generate_color("Maria")
    color.must_equal("#1000be")
  end

  it "returns a different color code if a similar name is pased" do
    color = ColorGenerator.generate_color("Bryan")
    color.must_equal("#8ec65b")
  end

  it "returns white if name is not pased" do
    color = ColorGenerator.generate_color
    color.must_equal("#000000")
  end
end
