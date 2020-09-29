# frozen_string_literal: true

describe 'Enumerable#partition' do
  let(:data) { Array(1..10) }

  it 'groups items in an array into 2 arrays' do
    expect(data.partition(&:odd?).count).to eq 2
  end

  it 'stores the matching items in the first array' do
    expect(data.partition(&:odd?).first).to match [1, 3, 5, 7, 9]
  end

  specify 'second array contains items that does not meet the condition' do
    mod3 = proc { |i| i % 3 == 0 }
    expect(data.partition(&mod3).last).to match [1, 2, 4, 5, 7, 8, 10]
  end
end
