# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  arr = []
  (num + 1).times do |i|
    arr << num_ones_in_bi(i)
  end
  arr
end

def num_ones_in_bi(num)
  bi = int_to_bi_string(num)
  bi_arr = bi.chars
  bi_arr.select{|str| str == "1"}.length
end

def int_to_bi_string(num)
  arr = []
  starter = 1
  until starter * 2 > num
    starter *= 2
  end

  until starter == 1
    if num >= starter
      arr << 1
      num -= starter
    else
      arr << 0
    end
    starter /= 2
  end
  arr << num
  arr.join
end
