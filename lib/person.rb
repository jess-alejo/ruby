# frozen_string_literal: true

# simple class to demonstrate array wrapping
class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    Array([@first_name, @last_name]).join(' ')
  end
end
