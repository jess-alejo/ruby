# frozen_string_literal: true

# Defines methods implementing rot16 encryption
module CaesarsCypher
  # Encrypts a string
  #
  # @example
  #   CaesarCypher.encrypt('Hello World')
  #
  # @param [String] string The string to encrypt
  # @return [String]
  def self.encrypt(string)
    string.tr('A-Za-z', 'N-ZA-Mn-za-m')
  end

  # Decrypts a CeasarsCypher encrypted string
  #
  # @example
  #   CeasarCypher.descrypt('Uryyb Jbeyq')
  #
  # @param [String] string String to decrypt
  # @return [String]
  def self.decrypt(string)
    string.tr('N-ZA-Mn-za-m', 'A-Za-z')
  end
end
