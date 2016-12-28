// # @param {String[]} tokens
// # @return {Integer}

function evalRpn(tokens) {
  var OPERATIONS = ['+', '-', '*', '/'];
  var numberStack = [];
  var last;

  // Turn the number strings into integers
  for (var i = 0; i < tokens.length; i++) {
    if (OPERATIONS.indexOf(tokens[i]) === -1) {
      tokens[i] = parseInt(tokens[i]);
    }
  }
  for (i = 0; i < tokens.length; i++) {
    // If it's a number
    if (OPERATIONS.indexOf(tokens[i]) === -1) {
      numberStack.push(tokens[i]);
    } // if it's an operation
    else {

      var lastNumber = numberStack.pop();
      var secondLastNumber = numberStack.pop();

      numberStack.push(performOperation(
        secondLastNumber, lastNumber, tokens[i]
      ));
    }
  }
  return numberStack[0];
}

function performOperation(num1, num2, operation) {
  if (operation === '+') {
    return num1 + num2;
  } else if (operation === '-') {
    return num1 - num2;
  } else if (operation === '*') {
    return num1 * num2;
  } else if (operation === '/') {
    if (num1/num2 >= 0) {
      return Math.floor(num1 / num2);
    } else if (num1 / num2 === Math.round(num1 / num2)) {
      return num1 / num2;
    } else {
      return Math.floor(num1 / num2) + 1;
    }
  }
}

module.exports = {
  eval_rpn: function(tokens) {
    return evalRpn(tokens);
  },
  performOperation: function(num1, num2, operation) {
    return performOperation(num1, num2, operation);
  }
};
