# frozen_string_literal: true

require_relative 'number_to_word'

NUMBERS = %i[zero one two three four five six seven eight nine].freeze
NUMBERS.each_with_index do |word, number|
  define_method(word) do |proc = nil|
    proc.nil? ? number : proc.call(number)
  end
end

def plus(right)
  proc { |left| number_to_word(left + right) }
end

def minus(right)
  proc { |left| number_to_word(left - right) }
end

def times(right)
  proc { |left| number_to_word(left * right) }
end

def divided_by(right)
  proc { |left| number_to_word(left.to_f / right) }
end
