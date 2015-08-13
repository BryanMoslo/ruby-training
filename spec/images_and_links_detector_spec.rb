require 'spec_helper'

describe ImagesAndLinksDetector do
  it "returns the images in a document" do
    images = ImagesAndLinksDetector.detect_images()
    # p images
  end
end
