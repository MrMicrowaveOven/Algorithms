function sumPairs(arr, target) {
  var length = arr.length;
  var right = length - 1;
  var left = 0;
  var sums = [];
  while (left < right) {
    if (arr[left] + arr[right] > target) {
      right -= 1;
    } else if (arr[left] + arr[right] < target) {
      left += 1;
    } else if (arr[left] + arr[right] === target) {
      sums.push([arr[left],arr[right]]);
      right -=1;
      left += 1;
    }
  }
  return sums;
}

module.exports = {
  sumPairs: function(arr, target) {
    return sumPairs(arr, target);
  }
};
