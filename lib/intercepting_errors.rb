# frozen_string_literal: true

# Intercepting errors with method_missing
class User
  @@attributes = %i[id name email]

  def initialize
    @attributes = {}
  end

  def method_missing(method_id, *args)
    if !respond_to_missing? method_id
      super
    elsif method_id.to_s.end_with? '='
      @attributes[method_id.to_s[1..-2]] = args.first
    else
      @attributes[method_id]
    end
  end

  def respond_to_missing?(method_id)
    @@attributes.include? method_id.to_s.gsub('=', '').to_sym
  end
end

u = User.new

u.name = 'John Doe'
u.email = 'john.doe@gmail.com'

puts u.name
puts u.email
puts u.age

# ```ruby
# class Roman
#   def roman_to_int(str)
#     # ...
#   end
#   def method_missing(methId)
#     str = methId.id2name
#     roman_to_int(str)
#   end
# end

# r = Roman.new
# r.iv      #=> 4
# r.xxiii   #=> 23
# r.mm      #=> 2000
# ```