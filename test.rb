# # #!/bin/env ruby
# # # encoding: utf-8

# # # # # max = 10_000_000

# # # # # test_arr = (1..max).to_a

# # # # # result = []

# # # # # 10.times do |x|

# # # # # 	num = rand max * 2

# # # # # 	time_start_1 = Time.now
# # # # # 	puts (test_arr.include? num) ? num : nil
# # # # # 	time_end_1 = Time.now

# # # # # 	time_start_2 = Time.now
# # # # # 	test_arr.detect {|n| n == num}
# # # # # 	time_end_2 = Time.now

# # # # # 	time_1 = time_end_1 - time_start_1
# # # # # 	time_2 = time_end_2 - time_start_2

# # # # # 	times = time_2 / time_1

# # # # # 	result << times
# # # # # 	puts 10 - x - 1
# # # # # end

# # # # # puts result.inject {|sum, n| sum + n} / 10

# # # # a = [["matt", "plumber"], ["phil", "baker"]]

# # # # a.map do |name, occ|
# # # # 	p "name: #{name}, occupation: #{occ}"
# # # # end

# # # def breakout(session_name)
# # # 	Proc.new { |presenter| puts "#{session_name} #{presenter}" }
# # # end

# # # p = breakout("Programming")
# # # p.call("Power")


# # # Detect if given array uses up all characters in a given character array

# # sentence = "Here, we are opening the file, and reading it into the ‘text’ variable. The syntax is quite rubyish. In the first part, ‘File.open(filename) ‘, a file object is being created, and passed to the block that follows it. The block is delimited by the curly"

# # def normalize(test_string)
# # 	require 'set'
# # 	test_string.split(/[^a-zA-Z]/).join("").split("").to_set
# # end

# # p ("a".."z").merge("A".."Z").to_a == normalize(sentence)

# def print_name(n)
# 	n.times { yield }
# end

# print_name(5) {puts "Luke"}

x, y = gets.chomp.split.map(&:to_i)
puts x + y














