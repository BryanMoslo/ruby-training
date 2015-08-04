class PerfectDetector
  def self.is_perfect?(number)
    sum = number_divisors_sum(number)
    sum == number
  end

  def self.number_divisors_sum(number)
    (1..number-1).select do |divisor|
      number % divisor == 0
    end.inject{|sum,x| sum + x }
  end
end
