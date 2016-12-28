def is_prime(n)
  return false if n < 2
  return true if n == 2
  !(2...Math.sqrt(n).ceil + 1).to_a.any? { |el| n % el == 0 }
end

def factors(n)
  return [] if n <= 0
  return [1,2] if n == 2
  ((1..(n/2+1)).to_a.select { |el| n % el == 0 }).push(n)
end

def prime_factors(n)
  factors(n).select { |el| is_prime(el)}
end
