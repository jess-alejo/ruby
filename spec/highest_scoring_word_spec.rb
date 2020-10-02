# frozen_string_literal: true

# Given a string of words, find the highest scoring word
# Each letter in a word is given points according their position in the
# alphabet: a = 1, b = 2, z = 26

def my_version(lorem)
  points = proc { |word| word.chars.map { |l| l.ord - 96 }.sum }
  lorem.split.reduce do |memo, word|
    points.call(word) > points.call(memo) ? word : memo
  end
end

def liked_version(lorem)
  lorem.scan(/\w+/).max_by { |word| word.sum - word.size * 96 }
end

describe 'Highest scoring word' do
  let(:p1) { 'Maecenas bibendum neque in euismod pretium' }
  let(:p2) { 'Vestibulum et luctus nisl, elementum tristique nulla' }

  context 'My version' do
    it { expect(my_version(p1)).to eq 'pretium' }
    it { expect(my_version(p2)).to eq 'tristique' }
  end

  context 'Liked version' do
    it { expect(liked_version(p1)).to eq 'pretium' }
    it { expect(liked_version(p2)).to eq 'tristique' }
  end
end

# Take away:
# scan: returns each match into an array, or passed to the block
# max_by: Returns the object in enum that gives the maximum value from the
#  given block
