# @param {Integer[]} nums
# @return {Integer}
# def max_sub_array(nums)
#   return 0 if nums.empty?
#   largest_sum = nums.first
#   nums.length.times do |walker|
#     (nums.length - walker).times do |runner|
#       runner = walker + runner
#       # p "Walker is #{walker}, runner is #{runner}."
#       small_array_sum = nums[walker..runner].inject(:+)
#       if small_array_sum > largest_sum
#         largest_sum = small_array_sum
#       end
#     end
#   end
#   largest_sum
# end
def max_sub_array(nums)
  return 0 if nums.empty?
  largest_sum = nums.first
  sub_array_sum = 0
  sub_array_length = 0
  nums.each do |el|
    sub_array_sum += el
    sub_array_length += 1

    if sub_array_sum > largest_sum
      largest_sum = sub_array_sum
    end
    if sub_array_sum < 0
      sub_array_sum = 0
      sub_array_length = 0
    end
  end
  largest_sum
end
