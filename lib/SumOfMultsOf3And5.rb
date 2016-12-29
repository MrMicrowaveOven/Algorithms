def sum_of_mults(n)
  sum_of_3_mults(n) + sum_of_5_mults(n) - sum_of_15_mults(n)
end

def sum_of_15_mults(n)
  return 0 if n <= 15
  nums = (2...n).to_a.reject{|x| x % 15 != 0}
  nums.inject(:+)
end

def sum_of_5_mults(n)
  return 0 if n <= 5
  nums = (2...n).to_a.reject{|x| x % 5 != 0}
  nums.inject(:+)
end

def sum_of_3_mults(n)
    return 0 if n <= 3
    nums = (2...n).to_a.reject{|x| x % 3 != 0}
    nums.inject(:+)
end
