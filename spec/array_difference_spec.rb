# frozen_string_literal: true

describe 'array difference' do
  let(:a) { [1, 2, 2] }
  let(:b) { [1] }

  context 'using -' do
    it 'should remove all values from list a, which are present in list b.' do
      expect(a - b).to eq [2, 2]
    end
  end

  context 'using #reject' do
    it 'should remove all values from list a, which are present in list b.' do
      expect(a.reject { |i| b.include? i }).to eq [2, 2]
    end
  end
end
