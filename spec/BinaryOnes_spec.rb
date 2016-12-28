require_relative '../lib/BinaryOnes'

describe 'count_bits' do
  it "returns an array of 1s count" do
    expect(count_bits(3)).to eq([0,1,1,2])
    expect(count_bits(5)).to eq([0,1,1,2,1,2])
  end
end

describe 'num_ones_in_bi' do
  it "returns a count of ones in the bi of number" do
    expect(num_ones_in_bi(3)).to eq(2)
    expect(num_ones_in_bi(1)).to eq(1)
    expect(num_ones_in_bi(0)).to eq(0)
  end
end

describe 'int_to_bi_string' do
  it "converts an integer to binary" do
    expect(int_to_bi_string(0)).to eq("0")
    expect(int_to_bi_string(1)).to eq("1")
    expect(int_to_bi_string(2)).to eq("10")
    expect(int_to_bi_string(3)).to eq("11")
    expect(int_to_bi_string(5)).to eq("101")
    expect(int_to_bi_string(8)).to eq("1000")
  end
end
