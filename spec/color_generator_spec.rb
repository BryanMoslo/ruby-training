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

  it "returns a color code if a short name is pased" do
    color = ColorGenerator.generate_color("Ana")
    color.must_equal("#942df9")
  end

  it "returns a color code if a long name is pased" do
    color = ColorGenerator.generate_color("Alejandromedo")
    color.must_equal("#74e3be")
  end

  it "returns white if name is not pased" do
    color = ColorGenerator.generate_color
    color.must_equal("#000000")
  end
end
