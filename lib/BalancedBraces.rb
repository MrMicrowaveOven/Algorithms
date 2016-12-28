def balanced_braces(str)
  brace_list_a = ["(", "[", "{"]
  brace_list_b = [")", "]", "}"]
  brace_count = []
  str_array = str.chars
  str_array.each do |char|
    if brace_count.include?(char)
      return false
    elsif brace_list_a.include?(char)
      brace_count << char
    elsif brace_list_b.include?(char)
      if brace_count.last == (brace_list_a[brace_list_b.index(char)])
        brace_count.pop
      else
        return false
      end
    end
  end
  return brace_count.empty?
end
