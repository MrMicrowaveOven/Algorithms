ROMAN_NUMERALS = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}

ROMAN_LIST = ROMAN_NUMERALS.keys

def roman_to_int(s)
  total = 0
  letters = s.chars

  last_ranking = 1000
  subtractable = 0

  letters.each do |letter|
    total += ROMAN_NUMERALS[letter]
    current_ranking = ROMAN_LIST.index(letter)
    if current_ranking > last_ranking
      total -= subtractable * 2
    elsif current_ranking < last_ranking
      subtractable = ROMAN_NUMERALS[letter]
    elsif current_ranking == last_ranking
      subtractable += ROMAN_NUMERALS[letter]
    end
    last_ranking = current_ranking
  end
  total
end
