class CryptoTool
  BASE_CHARACTERS = "abcdefghijklmnopqrstuvwxyz0123456789"

  # Receives an string an returns it encrypted
  def self.encrypt(input_sentence, charset_rotation=Random.rand(BASE_CHARACTERS.length))
    rotated_characters = BASE_CHARACTERS.rotate(charset_rotation)
    input_sentence.downcase!
    result = input_sentence.split('').collect do |character|
      index = BASE_CHARACTERS.index(character)
      char = index ? rotated_characters[index] : character
      char
    end
    return result.join
  end
end
