# frozen_string_literal: true

require './lib/number_to_word'

describe '#number_to_word' do
  it { expect(number_to_word(123)).to eq 'One Hundred Twenty Three' }
  it { expect(number_to_word(4500)).to eq 'Four Thousand Five Hundred' }
  it { expect(number_to_word(1_000_000)).to eq 'One Million' }
  it { expect(number_to_word(1_001_000_000)).to eq 'One Billion One Million' }
end
