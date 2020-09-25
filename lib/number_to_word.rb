# frozen_string_literal: true

SEPARATORS = {
  billion: 1_000_000_000, million: 1_000_000, thousand: 1_000, hundred: 100
}.freeze

TENS = {
  ninety: 90, eighty: 80, seventy: 70, sixty: 60, fifty: 50, forty: 40,
  thirty: 30, twenty: 20
}.freeze

TEENS = {
  nineteen: 19, eighteen: 18, seventeen: 17, sixteen: 16, fifteen: 15,
  fourteen: 14, thirteen: 13, twelve: 12, eleven: 11, ten: 10, nine: 9,
  eight: 8, seven: 7, six: 6, five: 5, four: 4, three: 3, two: 2, one: 1
}.freeze

def number_to_word(number)
  return 'Zero' if number.zero?
  return tens(number) if number < 100

  SEPARATORS.each do |word, value|
    m, r = number.divmod(value)
    next if m.zero?

    hundred = [hundred(m), word.to_s.capitalize].join(' ')
    return hundred if r.zero?

    return [hundred, number_to_word(r)].join(' ')
  end
end

def hundred(number)
  return tens(number) if number < 100

  m, r = number.divmod(100)
  return tens(r) if m.zero?

  [teens(m), 'Hundred', tens(r)].join(' ')
end

def tens(number)
  return teens(number) if number < 20

  m, r = number.divmod(10)
  [TENS.key(m * 10).to_s.capitalize, teens(r)].join(' ')
end

def teens(number)
  TEENS.key(number).to_s.capitalize
end
