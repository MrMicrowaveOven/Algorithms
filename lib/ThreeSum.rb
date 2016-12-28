require 'byebug'
# def three_sum(nums)
#   three_sums = []
#   length = nums.length
#   nums[0 ... length - 2].each_with_index do |first_num, first_index|
#     nums[first_index + 1 ... length - 1].each_with_index do |second_num, second_index|
#       nums[second_index + first_index + 1 ... length].each_with_index do |third_num, third_index|
#         if first_num + second_num + third_num == 0
#           three_sums << [first_index, second_index + first_index + 1, third_index + second_index + first_index + 1]
#         end
#       end
#     end
#   end
#   three_sums
# end

def three_sum(nums)
  return [] if nums.length < 3
  three_sums = []
  length = nums.length
  num_hash = Hash.new { |hash, key| hash[key] = [] }
  nums.each_with_index do |num, index|
    num_hash[num] << index
  end
  nums[0 ... length - 1].each_with_index do |first_num, first_index|
    nums[first_index + 1 ... length].each_with_index do |second_num, second_index|
      looking_for = -1 * (first_num + second_num)
      indices = [first_num, second_num, looking_for]
      if !num_hash[looking_for].reject {|x| x == first_index || x == second_index + first_index + 1}.empty?
        three_sums << [first_num, second_num, -1 * (first_num + second_num)].sort
      end
    end
  end
  three_sums.uniq
end
