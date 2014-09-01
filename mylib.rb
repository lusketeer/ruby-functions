module MyLib
	def find_repeat(test_str)
	    test_len = test_str.length 
		max_sub_len = test_len / 2

		i = max_sub_len
		while i > 0
			k = 0
			while k < test_len - 1
				temp_arr = test_str[k..test_len]
				if temp_arr.length > i
					x = i
					while x < temp_arr.length - i + 1
						test_word = temp_arr[0..(i - 1)]
						if test_word == temp_arr[x..(x + i - 1)] && test_word.strip != ""
							# Print the longest repeated substring
							puts test_word

							# Reset all iterators and get out of the while loop
							x = temp_arr.length
							k = test_len
							i = -1
						else
							x += 1
						end
					end
				end
				k += 1
			end
			i -= 1
		end

		if i == 0
			puts "NONE"
		end
	end
end


# CodeEval Standard Input
file_name = ARGV.first.chomp

File.readlines(file_name).each do |line|
	find_repeat(line)
end

