var expect = require('expect.js');
var msa = require('../lib/MergeSortedArrays.js');

describe("merge", function() {
  it('merges two simple arrays', function() {
    var array1 = [1,4,7];
    msa.merge(array1, 3, [2,3,5], 3);
    expect(array1).to.eql([1,2,3,4,5,7]);
  });
  it("doesn't fuck up when given an empty array", function() {
    var array1 = [];
    msa.merge(array1, 0, [1], 1);
    expect(array1).to.eql([1]);
  });
  it("cuts the arrays down to size", function() {
    var array1 = [0];
    msa.merge(array1, 0, [1], 1);
    expect(array1).to.eql([1]);
  });
});
