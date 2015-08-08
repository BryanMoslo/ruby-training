module Plates
  ALPHABET      = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  INDEX_VALUES  = [ 676000, 26000, 1000, 100, 10, 1 ]

  class Comparator
    def self.plate_to_decimal(plate)
      throw ArgumentError unless Plates::Validator.valid? plate

      plate.split("").each.with_index.inject(0) do |sum,(char,index)|
        sum + char_value(index, char)
      end
    end

    def self.char_value(index, char)
      char_index =  index < 3 ? Plates::ALPHABET.index(char) : char.to_i
      char_index * Plates::INDEX_VALUES[index]
    end

    def self.distance_between(plate_a, plate_b)
      numeric_value_for_a = plate_to_decimal(plate_a)
      numeric_value_for_b = plate_to_decimal(plate_b)

      return (numeric_value_for_a - numeric_value_for_b).abs
    end
  end

  class Validator
    def self.valid?(plate)
      !(plate =~ /[A-Z]{3}[0-9]{3}/).nil?
    end
  end
end
