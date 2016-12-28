require_relative '../lib/PrimeHelpers'

describe "prime_factors" do
  it "returns prime factors" do
    expect(prime_factors(2)).to eq([2])
    expect(prime_factors(3)).to eq([3])
    expect(prime_factors(4)).to eq([2])
    expect(prime_factors(6)).to eq([2,3])
  end
end

describe "factors" do
  it "returns factors of basic numbers" do
    expect(factors(2)).to eq([1,2])
    expect(factors(3)).to eq([1,3])
    expect(factors(4)).to eq([1,2,4])
    expect(factors(6)).to eq([1,2,3,6])
  end
end

describe "is_prime" do
  it "returns false with composites" do
    expect(is_prime(4)).to eq(false)
    expect(is_prime(6)).to eq(false)
    expect(is_prime(9)).to eq(false)
  end
  it "returns false with 1" do
    expect(is_prime(1)).to eq(false)
  end
  it "returns true with primes" do
    expect(is_prime(2)).to eq(true)
    expect(is_prime(3)).to eq(true)
    expect(is_prime(5)).to eq(true)
    expect(is_prime(11)).to eq(true)
  end
end
