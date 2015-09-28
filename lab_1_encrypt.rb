#!/usr/bin/env ruby
require 'rspec'

#######################################################
## YOUR CODE
dictionary = ('a'..'z').zip(('a'..'z').to_a.reverse)

def encrypt(string)
  
end

def decrypt(string)
  
end


#######################################################
## MAIN SECTION -- WHAT YOU WANT TO RUN

# encrypted = encrypt("I like pie")
# puts "ENCRYPTED: #{encrypted}"
# puts "DECRYPTED: #{decrypt(encrypted)}"



#######################################################
## TEST SECTION -- Run with 'rspec class_leap_years.rb'
RSpec.describe "simple encryption/encoding" do
  it "can encrypt a string" do
    expect(encrypt("Hello there")).not_to eq "Hello there"
  end

  it "can decrypt a string" do
    encrypted = encrypt("Hello there")
    expect(decrypt("Hello there")).to eq "Hello there"
  end
end
