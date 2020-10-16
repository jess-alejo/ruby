# frozen_string_literal: true

require 'prime'

def prime_factors(number)
  return [] unless number.is_a? Integer
  return [] if number < 1
  return [1] if number == 1

  primes = number.prime_division
  primes.uniq.map { |n, e| Array.new(e, n) }.flatten
end

def unique_prime_factors_with_count(number)
  primes = prime_factors(number)
  primes.uniq.map { |n| [n, primes.count(n)] }
end

def unique_prime_factors_with_products(number)
  unique_prime_factors_with_count(number).map { |n, e| n**e }
end
