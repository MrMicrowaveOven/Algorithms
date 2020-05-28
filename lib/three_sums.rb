# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  set = nums.to_set
  solutions = nums.combination(3).select {|arr| arr[0] + arr[1] + arr[2] == 0}
  solutions.map! {|arr| arr.sort}.uniq
end
