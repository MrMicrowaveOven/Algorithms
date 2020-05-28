require_relative '../lib/tree_serialize'

describe 'tree_to_array' do
  it 'converts a simple tree to an array' do
    left = TreeNode.new(2)
    right = TreeNode.new(3)
    tree = TreeNode.new(1, left, right)

    array = [1,2,3]
    expect(tree_to_array(tree)).to eq(array)
  end

  it 'converts a larger tree to an array' do
    left_left = TreeNode.new(4)
    left_right = TreeNode.new(5)
    right_left = TreeNode.new(6)
    right_right = TreeNode.new(7)
    left = TreeNode.new(2, left_left, left_right)
    right = TreeNode.new(3, right_left, right_right)
    node = TreeNode.new(1, left, right)

    array = [1,2,3,4,5,6,7]
    expect(tree_to_array(node)).to eq(array)
  end

  it 'converts a tree with nulls on left' do
    left = TreeNode.new(nil)
    right = TreeNode.new(3)
    tree = TreeNode.new(1, left, right)

    array = [1,nil,3]
    expect(tree_to_array(tree)).to eq(array)
  end
  it 'converts a tree with nulls on right' do
    left = TreeNode.new(2)
    right = TreeNode.new(nil)
    tree = TreeNode.new(1, left, right)

    array = [1,2,nil]
    expect(tree_to_array(tree)).to eq(array)
  end
end

describe 'make_binary_paths' do
  it 'works with basic paths (2)' do
    binary_paths = ['00', '01', '10', '11']
    expect(make_binary_paths(2)).to eq(binary_paths)
  end
  it 'works with intermediate paths (3)' do
    binary_paths = ['000', '001', '010', '011', '100', '101', '110', '111']
    expect(make_binary_paths(3)).to eq(binary_paths)
  end
  it 'works with a simple tree' do
    binary_paths = ['0', '1']
    expect(make_binary_paths(1)).to eq(binary_paths)
  end
  it 'works with single node' do
    binary_paths = []
    expect(make_binary_paths(0)).to eq(binary_paths)
  end
end
