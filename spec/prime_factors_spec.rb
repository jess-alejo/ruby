# frozen_string_literal: true

require './lib/prime_factors'

describe 'prime factors' do
  it 'returns prime factors' do
    expect(prime_factors(100)).to eq [2, 2, 5, 5]
  end

  it 'returns unique prime factors with count' do
    expect(unique_prime_factors_with_count(100)).to eq [[2, 2], [5, 2]]
  end

  it 'returns unique prime factors with products' do
    expect(unique_prime_factors_with_products(100)).to eq [4, 25]
  end
end
