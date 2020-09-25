# frozen_string_literal: true

require './lib/roman_numeral'

describe RomanNumeral do
  it { expect(subject.convert(1000)).to eq 'M' }
  it { expect(subject.convert(1982)).to eq 'MCMLXXXII' }
  it { expect(subject.convert(3456)).to eq 'MMMCDLVI' }
end
