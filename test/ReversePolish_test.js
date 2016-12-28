var expect = require('expect.js');
var rpn = require('../lib/ReversePolish.js');

describe("eval_rpn", function() {
  it('performs a single operation', function() {
    expect(rpn.eval_rpn(["2","1",'+'])).to.eql(3);
  });
  it('performs a complex operation', function() {
    expect(rpn.eval_rpn(["4", "13", "5", "/", "+"])).to.eql(6);
  });
  it('works with alternating operations', function() {
    expect(rpn.eval_rpn(["2","1","+","3","*"])).to.eql(9);
  });
  it('works with long operations', function() {
    expect(rpn.eval_rpn(
      ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
    )).to.eql(22);
  });
  it('works with long operations 2', function() {
    expect(rpn.eval_rpn(
      ["4","-2","/","2","-3","-","-"]
    )).to.eql(-7);
  });
});
describe("performOperation", function() {
  it('adds', function() {
    expect(rpn.performOperation(1, 4, "+")).to.eql(5);
  });
  it('subtracts', function() {
    expect(rpn.performOperation(2, 3, "-")).to.eql(-1);
  });
  it('multiplies', function() {
    expect(rpn.performOperation(2, 4, "*")).to.eql(8);
  });
  it('divides', function() {
    expect(rpn.performOperation(8, 2, "/")).to.eql(4);
  });
});
