class String
  def rotate(times)
    times = times.abs
    return self if self.length < 1
    result = self
    times.times do
      result = result[result.length-1]+result[0..result.length-2]
    end
    return result
  end
end
