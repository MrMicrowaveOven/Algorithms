function merge(array1, array1length, array2, array2length) {
  var mergedArray = [];


  // Trim the arrays to size
  while (array1.length > array1length) {
    array1.pop();
  }
  while (array2.length > array2length) {
    array2.pop();
  }

  while (array1.length > 0 && array2.length > 0) {
    if (array1[0] < array2[0]) {
      mergedArray.push(array1.shift());
    } else {
      mergedArray.push(array2.shift());
    }
  }
  var tempArray = mergedArray.concat(array1, array2);

  while (array1.length > 0) {
    array1.pop();
  }
  for (var i = 0; i < tempArray.length; i++) {
    array1.push(tempArray[i]);
  }
  array1 = tempArray;
  // return array1;
}

module.exports = {
  merge: function(array1, array1length, array2, array2length) {
    return merge(array1, array1length, array2, array2length);
  }
};
