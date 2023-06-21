# A hash table mapping Morse code to letters
MORSE_CODE_TABLE = {
  '.-': 'A',   '-...': 'B', '-.-.': 'C', '-..': 'D', '.': 'E',
  '..-.': 'F', '--.': 'G', '....': 'H', '..': 'I', '.---': 'J',
  '-.-': 'K',  '.-..': 'L', '--': 'M',   '-.': 'N', '---': 'O',
  '.--.': 'P', '--.-': 'Q', '.-.': 'R',  '...': 'S', '-': 'T',
  '..-': 'U',  '...-': 'V', '.--': 'W',   '-..-': 'X', '-.--': 'Y',
  '--..': 'Z'
}.freeze

# Decodes a single Morse code character
def decode_char(character)
  MORSE_CODE_TABLE[character.to_sym]
end

# Decodes a single Morse code word
def decode_word(word)
  decoded_word = ''
  chars = word.split(' ')
  chars.each do |character|
    letter = decode_char(character)
    decoded_word += letter if letter
  end
  decoded_word
end

# Decodes a full Morse code statement
def decode(statement)
  words = statement.split('   ')
  decoded_words = words.map { |word| decode_word(word) }
  decoded_words.join(' ')
end

# Example usage
puts decode_char('.-')
puts decode_word('-- -.--')
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
