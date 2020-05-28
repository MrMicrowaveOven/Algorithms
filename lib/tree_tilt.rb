def tree_sum(root)
  sum = 0
  sum += root.val if root.val
  sum += tree_sum(root.left) if root.left
  sum += tree_sum(root.right) if root.right
  sum
end

def find_tilt(root)
  (tree_sum(root.left) - tree_sum(root.right)).abs
end
