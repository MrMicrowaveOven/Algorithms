/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {boolean}
 */
var isValidBST = function(root) {
  return rIsValidBST(root, -2147483649, 2147483649);
};

var rIsValidBST = function(root, min, max) {
  if (!root) {
    return true;
  }
  if (root.right) {
    if (root.right.val <= root.val || root.right.val >= max) {
      return false;
    }
    if (rIsValidBST(root.right, root.val, max) === false) {
      return false;
    }
  }
  if (root.left) {
    if (root.left.val >= root.val || root.left.val <= min) {
      return false;
    }
    if (rIsValidBST(root.left, min, root.val) === false) {
      return false;
    }
  }
  return true;
};

module.exports = {
  isValidBST: function(root) {
    return isValidBST(root);
  }
};
