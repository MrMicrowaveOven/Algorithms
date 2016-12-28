# @param {String} str
# @return {Integer}
def my_atoi(str)
  sum = 0
  negative = false
  if str[0] == "+" && str[1] == "-" || str[0] == "-" && str[1] == "+"
    return 0
  end
  characters = str.chars
  length = str.length
  counting_mode = false;
  plus_used = false;
  minus_used = false;
  # Trim
  break_index = length
  characters.each_with_index do |char, index|
    if char.ord >= 97 && char.ord <= 122
      break_index = index
      break
    elsif char.ord >= 65 && char.ord <= 90
      break_index = index
      break
    elsif char == "+" && !plus_used
      plus_used = true
    elsif char == "-" && !minus_used
      minus_used = true
    elsif char == "+" && plus_used
      return 0
    elsif char == "-" && minus_used
      return 0
    elsif char.ord >= 48 && char.ord <= 57
      counting_mode = true
    elsif (char == " " && counting_mode) || (char == " " && (plus_used || minus_used))
      p "break_index set to #{index}"
      break_index = index
      break
    end
  end
  str = str.slice(0, break_index)
  characters = str.chars
  length = str.length

  counting_mode = false
  # Count
  characters.each_with_index do |char, index|
    if char == "-"
      negative = true
    elsif char == " " && counting_mode
      break
    elsif char == " " && negative
      break
    elsif char.ord >= 48 && char.ord <= 57
      sum += (char.ord - 48) * (10**(length - index - 1))
      counting_mode = true
    end
  end
  if negative
    sum *= -1
  end
  if sum > 2147483647
    sum = 2147483647
  elsif sum < -2147483648
    sum = -2147483648
  end
  sum
end
