# Enter your code here. Read input from STDIN. Print output to STDOUT
inpu = gets.chomp
inpu = gets.chomp

class Array
  def sorted?
    (length - 1).times do |i|
      return false if self[i] > self[i+1]
    end
    true
  end
end
def swap_sortable(arr)
  arr = arr.split(" ") if arr.is_a?(String)
  return "yes" if arr.sorted?
  sorted = arr.sort
  wrong_indices = []
  
  arr.each_with_index do |el, ind|
    sorted_el = sorted[ind]
    diff = el.to_i - sorted_el.to_i
    if diff != 0
      wrong_indices << ind
    end
  end
  if wrong_indices.length == 2
    return "yes\nswap #{wrong_indices[0] + 1} #{wrong_indices[1] + 1}"
  elsif wrong_indices.length > 2
    # make sure they're consequtive
    (wrong_indices.length - 1).times do |i|
      return "no" if wrong_indices[i] != wrong_indices[i + 1] -1
    end

    wrong_elements = wrong_indices.map {|el| arr[el]}
    if wrong_elements.reverse.sorted?
      return "yes\nreverse #{wrong_indices[0] + 1} #{wrong_indices.last + 1}"
    end
  end
  return "no"
end

puts swap_sortable(inpu)
