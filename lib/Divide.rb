# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  quotient = 0
  negative = dividend < 0 && divisor > 0 || dividend > 0 && divisor < 0
  dividend = dividend.abs
  divisor = divisor.abs

  speedy = 1

  until dividend < divisor && speedy == 1
    # p "dividend is #{dividend}, divisor is #{divisor}, speedy is #{speedy}."
    if dividend - (divisor * speedy) >= 0
      dividend -= divisor * speedy
      quotient += speedy
      speedy *= 2
    else
      speedy = 1
    end
  end
  if negative
    quotient *= -1
  end
  if quotient > 2147483647
    quotient = 2147483647
  end
  quotient
end
