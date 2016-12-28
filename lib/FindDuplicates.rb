def find_duplicates(nums)
  length = nums.length
  num_list = (1..length).to_a
  reps = []
  nums.each do |el|
    if num_list[el + 1] == 0
      reps << el
    else
      num_list[el + 1] = 0
    end
  end
  return reps
end
