#!/usr/bin/env ruby
require 'rspec'

#######################################################
## YOUR CODE
def get_dictionary
  Hash[('a'..'z').zip(('a'..'z').to_a.reverse)].merge(Hash[('A'..'Z').zip(('A'..'Z').to_a.reverse)])
end

def encrypt(string)
  secret_code = get_dictionary
  message_array = string.split(//)
  message_array.map! do |character|
    if secret_code.has_key?(character)
      secret_code[character]
    else
      character
    end
  end
  message_array.join
end

def decrypt(string)
  encrypt(string)
end


#######################################################
## MAIN SECTION -- WHAT YOU WANT TO RUN

encrypted = encrypt("I like pie")
puts "ENCRYPTED: #{encrypted}"
puts "DECRYPTED: #{decrypt(encrypted)}"



#######################################################
## TEST SECTION -- Run with 'rspec class_leap_years.rb'
RSpec.describe "simple encryption/encoding" do
  it "can encrypt a string" do
    expect(encrypt("hello there")).not_to eq "hello there"
  end

  describe "not case-sensitive" do
    it "can decrypt a string" do
      encrypted = encrypt("hello there")
      expect(decrypt(encrypted)).to eq "hello there"
    end

    it "can decrypt a string with punctuation too" do
      encrypted = encrypt("hello there!")
      expect(decrypt(encrypted)).to eq "hello there!"
    end
  end

  describe "case-sensitive" do
    it "can decrypt a string" do
      encrypted = encrypt("Hello there")
      expect(decrypt(encrypted)).to eq "Hello there"
    end
  end
end
