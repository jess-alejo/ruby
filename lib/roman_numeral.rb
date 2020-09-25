# frozen_string_literal: true

# Module to demonstrate recursion
module RomanNumeral
  NUMERALS = {
    M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
    L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1
  }.freeze

  # Converts a number to Roman Numeral
  #
  # @example
  #   RomanNumeral.convert(143)
  #
  # @param [Integer] number A number to convert
  # @return [String]
  def self.convert(number)
    return '' if number <= 0

    NUMERALS.each do |letter, value|
      return letter.to_s + convert(number - value) if number >= value
    end
  end
end
