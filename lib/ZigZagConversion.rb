# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows < 2
  char_array = s.chars
  # p char_array
  s.length.times do |i|
    if (i + 1) % (num_rows + 1) == 0
      if num_rows % 2 == 1
        char_array[i - (num_rows - 1)] += s[i]
        char_array[i] = ""
      else
        char_array[i - (num_rows)] += s[i]
        char_array[i] = ""
      end
    end
  end
  final_array = []
  num_rows.times do |row|
    space = row;
    until space >= s.length
      final_array << char_array[space]
      space += num_rows + 1
    end
  end
  final_array.join
end
