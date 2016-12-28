def is_ugly(num)
  return false if num <= 0
  [2,3,5].each do |factor|
    until num % factor != 0
      num = num / factor
    end
  end
  num == 1
end

def nth_ugly_number(n)
  guess = 0
  until n == 0
    guess += 1
    if is_ugly(guess)
      n -= 1
    end
  end
  guess
end
