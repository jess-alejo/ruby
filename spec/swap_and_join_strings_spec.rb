# frozen_string_literal: true

# For every character in string a swap the casing of every occurrence of the
# same character in string b

def work_on_strings(string1, string2)
  [swap_letters(string1, string2), swap_letters(string2, string1)].join
end

def swap_letters(string1, string2)
  string1.chars.map { |c| string2.scan(/#{c}/i).size.odd? ? c.swapcase : c }
end

describe 'Swap and join strings' do
  it { expect(work_on_strings('abc', 'cde')).to eq 'abCCde' }
  it { expect(work_on_strings('XYZ', 'abc')).to eq 'XYZabc' }
  it { expect(work_on_strings('step on', 'NO PETS')).to eq 'STEP ONno pets' }
end
