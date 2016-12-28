require_relative "../lib/UglyNumber.rb"

describe('is_ugly') do
  it "shows that 6 is ugly" do
    expect(is_ugly(6)).to eq(true)
  end
  it "shows that 8 is ugly" do
    expect(is_ugly(8)).to eq(true)
  end
  it "shows that 14 is not ugly" do
    expect(is_ugly(14)).to eq(false)
  end
  it "shows that 1 is ugly" do
    expect(is_ugly(1)).to eq(true)
  end
  it "knows that negative numbers are never ugly" do
    expect(is_ugly(-2)).to eq(false)
  end
end

describe('nth_ugly_number') do
  it "gives the nth ugly number" do
    expect(nth_ugly_number(1)).to eq(1)
    expect(nth_ugly_number(2)).to eq(2)
    expect(nth_ugly_number(3)).to eq(3)
    expect(nth_ugly_number(4)).to eq(4)
    expect(nth_ugly_number(5)).to eq(5)
    expect(nth_ugly_number(6)).to eq(6)
    expect(nth_ugly_number(7)).to eq(8)
    expect(nth_ugly_number(8)).to eq(9)
    expect(nth_ugly_number(9)).to eq(10)
    expect(nth_ugly_number(10)).to eq(12)
  end
end
