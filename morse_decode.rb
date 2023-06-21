MORSE_CODE_TABLE = {
  '.-'    => 'A',
  '-...'  => 'B',
  '-.-.'  => 'C',
  '-..'   => 'D',
  '.'     => 'E',
  '..-.'  => 'F',
  '--.'   => 'G',
  '....'  => 'H',
  '..'    => 'I',
  '.---'  => 'J',
  '-.-'   => 'K',
  '.-..'  => 'L',
  '--'    => 'M',
  '-.'    => 'N',
  '---'   => 'O',
  '.--.'  => 'P',
  '--.-'  => 'Q',
  '.-.'   => 'R',
  '...'   => 'S',
  '-'     => 'T',
  '..-'   => 'U',
  '...-'  => 'V',
  '.--'   => 'W',
  '-..-'  => 'X',
  '-.--'  => 'Y',
  '--..'  => 'Z'
}

def decode_char(character)
  return MORSE_CODE_TABLE[character]
end

def decode_word(word)
  decoded_word = ""
  split_word = word.split(" ")
  split_word.each do |character|
    more_match = MORSE_CODE_TABLE[character]
    decoded_word += more_match if more_match
  end
  decoded_word
end

def decode(statement)
  split_statement = statement.split("   ")
  overall_word = split_statement.map { |word| decode_word(word) }
  decoded_words = overall_word.join(" ")
  decoded_words
end

puts decode_char(".-")
puts decode("-- -.--   -. .- -- .")
puts decode_word("-. .- -- .")
puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
