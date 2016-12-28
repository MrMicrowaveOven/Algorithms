var findDisappearedNumbers = function(nums) {
  var length = nums.length;
  var map = [];
  for (var i = 1; i <= length; i++) {
    map.push(i);
  }
  nums.forEach(function(el) {
    map[el - 1] = 0;
  });
  return map.filter(function(el) {
    return (el !== 0);
  });
};

module.exports = {
  findDisappearedNumbers: function(nums) {
    return findDisappearedNumbers(nums);
  }
};
