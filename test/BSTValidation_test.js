var expect = require('expect.js');
var bstv = require('../lib/BSTValidation.js');

describe("BSTValidation", function () {

  it("returns true when given an empty tree", function () {
    expect(bstv.isValidBST([])).to.eql(true);
  });
  it("returns true when given a valid tree", function () {
    var GoodTree = {
      val: 2,
      right: { val: 3, right: null, left: null },
      left: { val: 1, right: null, left: null } };
    expect(bstv.isValidBST(GoodTree)).to.eql(true);
  });
  it("returns false when there are value repeats", function () {
    var ValueRepeatTree = {
      val: 1,
      right: { val: 1, right: null, left: null },
      left: null
    };
    expect(bstv.isValidBST(ValueRepeatTree)).to.eql(false);
  });
  it("returns false when a deep branch doesn't match the root", function () {
    var HeavyBranchTree = {
      val: 10,
      right: {
        val: 15,
        right: { val: 20, right: null, left: null },
        left: { val: 6, right: null, left: null }
      },
      left: { val: 5, right: null, left: null } };
    expect(bstv.isValidBST(HeavyBranchTree)).to.eql(false);
  });
});
