class PrimesDetector
  def self.prime?(number)
    divisor = exact_divisors_for(number)
    divisor == 2
  end

  def self.exact_divisors_for(number)
    return 0 unless number.is_a?(Fixnum)
    (1..number).select do |divisor|
      number % divisor == 0
    end.size
  end
end
