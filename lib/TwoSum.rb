# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# def two_sum(nums, target)
#     indices = []
#     nums[0...nums.length - 1].each_with_index do |walker, walker_index|
#         nums[walker_index + 1..nums.length - 1].each_with_index do |runner, runner_index|
#             if walker + runner == target
#                 indices = [walker_index, runner_index + walker_index + 1]
#             end
#         end
#     end
#     indices
# end

def two_sum(nums, target)
  # Make a hash of nums
  hash = {}
  nums.each do |num|
    if hash[num]
      hash[num] = "duplicated"
    else
      hash[num] = "exists"
    end
  end
  # Make an array of nums - target
  nums_minus_target = nums.map do |num|
    num = target - num
  end
  # first_target_index is the index of the first of the two numbers.
  first_target_index = nil
  nums_minus_target.each_with_index do |num, index|
    if hash[num] == "exists" && (2 * num != target)
      first_target_index = index
      break
    elsif hash[num] == "duplicated"
      first_target_index = index
    end
  end
  first_number = nums[first_target_index]
  second_target_index = nil
  nums.each_with_index do |num, index|
    if num == target - first_number && index != first_target_index
      second_target_index = index
    end
  end
  [first_target_index, second_target_index]
end
