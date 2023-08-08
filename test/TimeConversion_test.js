var expect = require('expect.js');
var convertToReadableTime = require('../lib/TimeConversion.js').convertToReadableTime;

describe("convertToReadableTime", () => {
  it("converts 100", () => {
    expect(convertToReadableTime(100)).to.equal("1AM")
    expect(convertToReadableTime(115)).to.equal("1:15AM")
    expect(convertToReadableTime(1200)).to.equal("12PM")
    expect(convertToReadableTime(1230)).to.equal("12:30PM")
    expect(convertToReadableTime(505)).to.equal("5:05AM")
    expect(convertToReadableTime(2205)).to.equal("10:05PM")
    expect(convertToReadableTime(0)).to.equal("12AM")
  });
});
