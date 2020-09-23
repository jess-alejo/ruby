# frozen_string_literal: true

require './lib/person'

describe 'Array()' do
  let(:number) { 1 }
  let(:letters) { %w[a b c] }
  let(:nothing) { nil }

  it 'ensures we have an array no matter our input' do
    expect(Array(number)).to eq [1]
    expect(Array(letters)).to match(%w[a b c])
    expect(Array(nil)).to be_empty
  end
end

describe Person do
  let(:person) { Person.new('Joe', 'Smith') }

  context '#full_name' do
    it { expect(person.full_name).to eq 'Joe Smith' }
  end
end
