class Combinations

  def self.generate_combinations(word, number_of_group = nil)
    puts "==========================="
    puts "         For #{word} #{number_of_group}"
    puts ".=========================== \n\n"

    combinations = set_combinations(word, number_of_group)

    result = []
    combinations.each do |combination|
       result << combination.join()
    end

    print result.uniq
    print "\n\n\n"

    result.uniq
  end

  def self.get_factorial(number)
    (1..number).inject(:*) || 1
  end

  def self.set_combinations(word, number_of_group = nil)
    combinations = []
    letters = word.split(//)
    factorial = get_factorial(word.size)

    iterator = 0
    while iterator != factorial do
      shuffled_array = letters.shuffle()
      unless combinations.include?(shuffled_array)
        if number_of_group
          combinations << shuffled_array[0..number_of_group - 1]
        else
          combinations << shuffled_array
        end
        iterator += 1
      end
    end

    combinations
  end
end
