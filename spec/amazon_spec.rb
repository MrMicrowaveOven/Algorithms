require_relative '../lib/amazon'

describe 'numberAmazonTreasureTrucks' do
  it "works with basic" do
    park = [
      [1,1,0,0,0],
      [1,1,0,0,0],
      [1,0,1,0,1],
      [0,0,1,1,1],
    ]
    expect(numberAmazonTreasureTrucks(4, 5, park)).to eq(2)
  end
  it "works with spiral" do
    park = [
      [1,1,0,0,0,0,0,0,0],
      [1,1,0,0,1,1,1,1,0],
      [1,0,0,0,1,0,0,1,0],
      [0,0,1,0,1,0,0,1,0],
      [0,0,1,0,1,1,0,1,0],
      [0,0,1,0,0,0,0,1,0],
      [0,0,1,0,0,0,0,1,0],
      [0,0,1,1,1,1,1,1,0],
    ]
    expect(numberAmazonTreasureTrucks(8, 9, park)).to eq(2)
  end
end
