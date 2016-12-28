var expect = require('expect.js');
var lss = require('../lib/LongestSubstring.js');

describe('longestSubstring', function() {
  it('gives longest substring', function() {
    expect(lss.longestSubstring('abbab', 3)).to.eql('0');
  });
});
