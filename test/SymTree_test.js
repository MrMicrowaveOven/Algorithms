var expect = require('expect.js');
var st = require('../lib/SymTree.js');


describe("isSymmetric", function () {
  it("returns true when a tree is symmetric", function () {
    var GoodTree = {
      val: 1,
      right: {
        val: 2,
        right: { val: 3, right: null, left: null },
        left: { val: 4, right: null, left: null } },
      left: {
        val: 2,
        right: { val: 4, right: null, left: null },
        left: { val: 3, right: null, left: null }
      }
    };
    expect(st.isSymmetric(GoodTree)).to.eql(true);
  });
  it("doesn't freak out with odd nulls", function () {
    var CloseTree = {
      val: 1,
      right: {
        val: 2,
        right: { val: 3, right: null, left: null },
        left: null },
      left: {
        val: 2,
        right: { val: 3, right: null, left: null },
        left: null
      }
    };
    expect(st.isSymmetric(CloseTree)).to.eql(false);
  });
  it("works with 1-layer trees", function () {
    var SmallTree = {
      val: 1,
      right: { val: 3, right: null, left: null },
      left: { val: 2, right: null, left: null }
    };
    expect(st.isSymmetric(SmallTree)).to.eql(false);
  });
  it("doesn't give a false positive with lower reflections", function () {
    var AlmostSymmetric = {
      val: 2,
      right: {
        val: 3,
        right: { val: 5, right: null, left: null },
        left: { val: 4, right: null, left: null }
      },
      left: {
        val: 3,
        right: { val: 5, right: null, left: null },
        left: { val: 4, right: null, left: null }
      }
    };
    expect(st.isSymmetric(AlmostSymmetric)).to.eql(false);
  });
});
