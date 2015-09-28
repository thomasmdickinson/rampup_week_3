#!/usr/bin/env ruby
require 'rspec'

#######################################################
## YOUR CODE
def get_dictionary(offset)
  ('a'..'z').zip(('a'..'z').to_a...)
end

def caesar_encrypt(string, offset)
  dictionary = get_dictionary(offset)

end

def caesar_decrypt(string, offset)
  dictionary = get_dictionary(offset)

end


#######################################################
## MAIN SECTION -- WHAT YOU WANT TO RUN

# encrypted = caesar_encrypt("I do not like Caesar salad", 2)
# puts "ENCRYPTED: #{encrypted}"
# puts "DECRYPTED: #{caesar_decrypt(encrypted, 2)}"


#######################################################
## TEST SECTION -- Run with 'rspec class_leap_years.rb'
RSpec.describe "Caesar cipher" do
  it "can encrypt a string" do
    expect(caesar_encrypt("Hello there", 10)).not_to eq "Hello there"
  end

  it "can decrypt a string when given the right offset" do
    encrypted = caesar_encrypt("Hello there", 10)
    expect(caesar_decrypt(encrypted, 10)).to eq "Hello there"
  end

  it "cannot decrypt a string when given the incorrect offset" do
    encrypted = caesar_encrypt("Hello there", 10)
    expect(caesar_decrypt(encrypted, 20)).not_to eq "Hello there"
  end

end
