# frozen_string_literal: true

# Demonstate how we can monkey patch an existing class and methods
class String
  def reverse
    split(' ').reverse.join(' ')
  end

  def to_b
    self =~ /true/ ? true : false
  end
end

# Monkey patching an object
# s = 'true'
# t = 'false'

# def s.to_b
#   self =~ /true/ ? true : false
# end

# puts s.to_b
