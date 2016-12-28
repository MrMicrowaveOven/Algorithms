var isSymmetric = function(root) {
  if (!root) {
    return true;
  }
  return areReflections(root.left, root.right);
};

var areReflections = function(root1, root2) {
  if (!root1 && !root2) {
    return true;
  } else if (!root1 || !root2) {
    return false;
  } else if (root1.val !== root2.val) {
    return false;
  } else if (areReflections(root1.left, root2.right) && areReflections(root2.left, root1.right)) {
    return true;
  }
  return false;
};

module.exports = {
  isSymmetric: function(root) {
    return isSymmetric(root);
  }
};
