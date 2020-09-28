# frozen_string_literal: true

require './lib/sum_of_pairs'

describe 'Sum of pairs' do
  let(:l1) { [1, 4, 8, 7, 3, 15] }
  let(:l2) { [5, 5, 8, 7, 3, 15] }

  it 'should get the pair of number that form up the sum' do
    expect(sum_of_pairs(l1, 8)).to eq [1, 7]
    expect(sum_of_pairs(l2, 10)).to eq [5, 5]
  end
end
