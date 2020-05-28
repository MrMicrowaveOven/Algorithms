require_relative '../lib/tree_tilt'

describe 'find_tilt' do
  it "works with basic tree" do
    tree = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))
    expect(find_tilt(tree)).to eq(1)
  end
  it 'works with large tree' do
    left = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))
    right = TreeNode.new(5, TreeNode.new(2))
    tree = TreeNode.new(12, left, right)
    expect(find_tilt(tree)).to eq(1)
  end
end

describe 'tree_sum' do
  it 'returns the sum of node and all children recursively (small)' do
    tree = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))
    expect(tree_sum(tree)).to eq(6)
  end
  it 'returns the sum of node and all children recursively (large)' do
    left = TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))
    right = TreeNode.new(5, TreeNode.new(2))
    tree = TreeNode.new(12, left, right)
    expect(tree_sum(tree)).to eq(25)
  end
end
