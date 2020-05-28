require_relative '../lib/three_sums.rb'

describe 'three_sum' do
  it "works with a basic array" do
    expect(three_sum([-1, 0, 1, 2, -1, -4])).to eq([
      [-1, 0, 1],
      [-1, -1, 2]
    ])
  end

  it "doesn't replicate zeros" do
    expect(three_sum([0,0])).to eq([])
  end

  it "doesn't duplicate items" do
    expect(three_sum([1,2,-2,-1])).to eq([])
  end
end
