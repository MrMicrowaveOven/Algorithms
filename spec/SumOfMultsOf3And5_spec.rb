require_relative "../lib/SumOfMultsOf3And5.rb"

describe "sum_of_mults" do
  it "gives the sum of all mults of 3 and 5 that are less than the given number" do
    expect(sum_of_mults(10)).to eq(23)
    expect(sum_of_mults(100)).to eq(2318)
  end
  it "doesn't freak out with a number less than 3" do
    expect(sum_of_mults(2)).to eq(0)
    expect(sum_of_mults(1)).to eq(0)
    expect(sum_of_mults(0)).to eq(0)
  end
  it "doesn't freak out with negatives or floats" do
    expect(sum_of_mults(-100)).to eq(0)
    expect(sum_of_mults(2.5)).to eq(0)
    expect(sum_of_mults(9.5)).to eq(23)
  end
end

describe "sum_of_3_mults" do
  it "gives the sum of all mults of 3 that are less than the given number" do
    expect(sum_of_3_mults(10)).to eq(18)
  end
end
describe "sum_of_5_mults" do
  it "gives the sum of all mults of 5 that are less than the given number" do
    expect(sum_of_5_mults(21)).to eq(50)
  end
end
describe "sum_of_15_mults" do
  it "gives the sum of all mults of 15 that are less than the given number" do
    expect(sum_of_15_mults(31)).to eq(45)
  end
end
