var expect = require('expect.js');
var sp = require('../lib/SumPairs.js');

describe("sumPairs", function() {
  it("finds a simple set of pairs that add up to the target", function() {
    expect(sp.sumPairs([1,2,3,4,5,6,9], 8)).to.eql([[2,6],[3,5]]);
  });
});
