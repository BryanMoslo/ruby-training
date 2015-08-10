class PlatesDistance
  ALPHABET = ("A".."Z").to_a

  def self.distance(plate_a, plate_b)
    if valid_plates?(plate_a, plate_b)
      plate_a_letters = plate_a[0..2].split(//)
      plate_b_letters = plate_b[0..2].split(//)

      letters_distance = distance_in_letters(plate_a_letters, plate_b_letters)

      numbers_distance = letters_distance != 0 ? (letters_distance * 999) : 0
      result = numbers_distance + plate_b[3..5].to_i - plate_a[3..5].to_i

      return result
    else
      return "ERROR - Plates not valid"
    end
  end

  def self.valid_plates?(plate_a, plate_b)
    valid = plate_a.length == 6 && plate_b.length == 6
    valid &= plate_a[0..2].class == String && plate_b[0..2].class == String
    valid &= plate_a[3..5] !~ /\D/ && plate_b[3..5] !~ /\D/
    valid &= plate_a < plate_b

    return valid
  end

  def self.distance_in_letters(letters_a, letters_b)
    return 0 if letters_a == letters_b

    result = 1
    letters_a.each_with_index do |letter, index|
      index_a = ALPHABET.index(letter.upcase) + 1
      index_b = ALPHABET.index(letters_b[index].upcase) + 1

      result *= (index_b - index_a) if (index_b - index_a) > 0
    end

    return result
  end
end
