# frozen_string_literal: true

require './event'

class TestF
  attr_accessor :words

  def initialize
    @words = []
  end

  def call(*args)
    @words.push(*args)
  end
end

describe Event do
  it 'should call the stored functions' do
    testf = TestF.new
    subject.subscribe(testf)
    word = 'Hello World'
    subject.emit(word)

    expect(testf.words).to include word
  end
end
