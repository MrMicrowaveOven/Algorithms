require_relative 'tree_node'

def tree_to_array(root)
  arr = []
  not_all_null = true
  arr << root.val
  i = 1
  while not_all_null
    not_all_null = false
    paths = make_binary_paths(i)
    paths.each do |path|
      node = root
      path.chars.each do |char|
        node = char == '0' ? node.left : node.right
      end
      if node && node.val
        arr << node.val
        not_all_null = true
      end
    end
    i += 1
  end
  arr
end

def array_to_tree(array)

end

def make_binary_paths(exp)
  return [] if exp == 0
  binary_paths = []
  num_paths = 2**exp
  num_paths.times do |i|
    # Makes it binary, adds leading zeros
    binary_paths << i.to_s(2).rjust(exp, '0')
  end
  binary_paths
end
