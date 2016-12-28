var expect = require('expect.js');
var mn = require('../lib/MissingNumbers.js');
describe('findDisappearedNumbers', function() {
  it('works with basic array', function() {
    expect(mn.findDisappearedNumbers([4,3,2,7,8,2,3,1])).to.eql([5,6]);
  });
});
