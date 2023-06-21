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
  MORSE_CODE_TABLE[character]
end

# Decodes a single Morse code word
def decode_word(word)
  decoded_word = ''
  split_word = word.split
  split_word.each do |character|
    decoded_character = MORSE_CODE_TABLE[character]
    decoded_word += decoded_character if decoded_character
  end
  decoded_word
end

# Decodes a full Morse code statement
def decode(statement)
  split_statement = statement.split('   ')
  overall = split_statement.map { |word| decode_word(word) }
  overall.join(' ')
end

# Example usage
puts decode_char('.-')
puts decode_word('-- -.--')
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
