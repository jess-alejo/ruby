# frozen_string_literal: true

require './lib/calculating_with_functions'

describe 'Verbose arithmetic calculations' do
  it { expect(five(plus(seven))).to eq 'Twelve' }
  it { expect(eight(divided_by(two))).to eq 'Four' }
  it { expect(nine(times(nine))).to eq 'Eighty One' }
  it { expect(seven(minus(one))).to eq 'Six' }
end
