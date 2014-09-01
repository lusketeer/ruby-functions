=begin

message = "..."
magazine = "....."

abc / abc => true
abc / cba => true
abc / asabs;jkbjbcjbacascb => true
abcc / abcd => false

=end
require 'set'


message = "abcc"
magazine = "abcd"

=begin
char_set = message.split(/[^a-zA-Z]/).join("").split("").to_set
lookup_set = magazine.split(/[^a-zA-Z]/).join("").split("").to_set
p char_set.subset? lookup_set
=end

def convert(input)
  set = input.split(/[^a-zA-Z]/).join("").split("")
  set_hash = Hash.new(0)
  set.each {|v| set_hash[v] += 1}
  return set_hash
end

char_set = convert(message)
lookup_set = convert(magazine)

if char_set.keys.to_set.subset? lookup_set.keys.to_set
  if (char_set.all? {|k, v| char_set[k] <= lookup_set[k]})
    puts "We are good to go"
  else
    puts "We can't make string from magazine"
  end
else
  puts "We can't make string from magazine"
end





=begin
def say_hello
  puts 'Hello, World'
end

5.times { say_hello }
=end