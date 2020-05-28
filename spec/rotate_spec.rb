require_relative '../lib/rotate'

describe 'rotate' do
  it "works with 3x3" do
    matrix = [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
    rotated_matrix = [
      [7,4,1],
      [8,5,2],
      [9,6,3]
    ]
    expect(rotate(matrix)).to eq(rotated_matrix)
  end
end
