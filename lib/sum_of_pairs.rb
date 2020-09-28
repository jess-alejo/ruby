# frozen_string_literal: true

# Return the first two values that when added, form up the sum
#
# @parameter [Array<Integer>] ints A collection of integer
# @parameter [Integer] s, Sum to form up by two numbers
def sum_of_pairs(ints, sum)
  seen = {}

  ints.each do |int|
    diff = sum - int
    return [diff, int] if seen[diff]

    seen[int] = true
  end

  nil
end
