# frozen_string_literal: true

require './lib/caesars_cypher'

describe CaesarsCypher do
  it 'encrypts a given string' do
    expect(subject.encrypt('Hello World')).to eq 'Uryyb Jbeyq'
  end

  it 'decrypts an encrypted string' do
    expect(subject.decrypt('Uryyb Jbeyq')).to eq 'Hello World'
  end

  it 'returns the original string if encrypted twice' do
    string = 'Gimme Nulledge'
    expect(subject.encrypt(subject.encrypt(string))).to eq string
  end
end
