# frozen_string_literal: true

# Write a function, persistence, that takes in a positive parameter num and
# returns its multiplicative persistence, which is the number of times you must
# multiply the digits in num until you reach a single digit.

def persistence(num)
  num < 10 ? 0 : 1 + persistence(num.digits.reduce(:*))
end

describe 'Multiplicative Persistence' do
  it { expect(persistence(39)).to eq 3 }
  it { expect(persistence(999)).to eq 4 }
  it { expect(persistence(4)).to eq 0 }
end
