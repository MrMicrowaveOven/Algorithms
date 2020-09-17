require_relative '../lib/zocdoc'

describe 'change_date_format' do
  it "works" do
    better_dates = change_date_format(["2010/03/30", "15/12/2016", "11-15-2012", "20130720"])
    expect(better_dates).to eq(['20100330', '20161215', '20121115'])
  end
end
#
# describe 'find_all_hobbyists' do
#   it "works" do
#     hobbies = {
#         "Steve" => ['Fashion', 'Piano', 'Reading'],
#         "Patty" => ['Drama', 'Magic', 'Pets'],
#         "Chad" => ['Puzzles', 'Pets', 'Yoga']
#     }
#     expect(find_all_hobbyists('Yoga', hobbies)).to eq(["Chad"])
#   end
# end
#
# describe 'numbers_to_letters' do
#   it "works" do
#     expect(numbers_to_letters('20 5 19 20+4 15 13 5')).to eq('TEST DOME')
#   end
# end
#
# describe 'validate?' do
#   it "checks length" do
#     expect(validate?('abc')).to eq(false)
#     expect(validate?('Mike_Standish')).to eq(true)
#     expect(validate?('Mike Standish')).to eq(false)
#   end
# end

# describe 'sort_by_price_ascending' do
#   it 'sorts' do
#     price_string ='[{"name":"eggs","price":1},{"name":"coffee","price":9.99},{"name":"rice","price":4.04}]'
#     expect(sort_by_price_ascending(price_string)).to eq('sorted_price_string')
#   end
# end






def find_all_hobbyists(hobby, hobbies)
  peeps_with_hobby = []
  hobbies.each do |person, hobby_list|
    if hobby_list.include?(hobby)
      peeps_with_hobby << person
    end
  end
  peeps_with_hobby
end

def numbers_to_letters(string)
  sentence = ''

  words = string.split('+')
  words.each_with_index do |word, index|
    sentence += ' ' if index != 0

    letters = word.split(' ')
    letters.each do |letter|
      letter = letter.to_i
      letter += 64
      sentence += letter.chr
    end
  end
  sentence
end

def validate?(username)
  # Must be at least 4 characters
  return false if username.length < 4

  char_count = char_count(username)
  # Cannot have more than one underscore
  return false if char_count['_'] > 1
  # Cannot end with underscore
  return false if username.chars.last == '_'
  # Must start with letter
  return false unless username.match?(/\A[a-zA-Z]/)
  # No non-word (letter, number, underscore) characters
  return false if username.match?(/\W/)
  true
end

def char_count(string)
  chars = string.chars
  chars_count = Hash.new(0)
  chars.each do |char|
    chars_count[char] += 1
  end
  chars_count
end
