# frozen_string_literal: true

RSpec.describe 'Monkey Patching' do
  describe 'Before Monkey Patching' do
    context 'String#reverse' do
      it { expect('Hello World'.reverse).to eq 'dlroW olleH' }
    end

    context 'String#to_b' do
      it { expect { 'true'.to_b }.to raise_error(NoMethodError) }
    end
  end

  describe 'After Monkey Patching' do
    before do
      require './lib/monkey_patching'
    end

    context 'String#reverse' do
      it { expect('Hello World'.reverse).to eq 'World Hello' }
    end

    context 'String#to_b' do
      it { expect('true'.to_b).to be true }
    end
  end
end
