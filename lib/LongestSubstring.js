function longestSubstring(str, lim) {
  // var sorted = str.sort();
  var letterCount = {};
  var finalReturn = 0;
  var charArray = str.split('');
  charArray.forEach(function(char) {
    if(letterCount[char]){
      letterCount[char] = letterCount[char] + 1;
    } else {
      letterCount[char] = 1;
    }
  });
  Object.keys(letterCount).forEach(function(letCount) {
    if (letterCount[letCount] >= lim) {
      finalReturn = finalReturn + letterCount[letCount];
    }
  });
  return finalReturn;
}

module.exports = {
  longestSubstring: function(str,lim) {
    return longestSubstring(str, lim);
  }
};
