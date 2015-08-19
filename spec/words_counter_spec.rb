require 'spec_helper'

describe WordsCounter do
  it "returns a json file" do
    WordsCounter.words_counter("plane_text")
  end

  it "returns a json file" do
    WordsCounter.words_counter("CSM")
  end
end
