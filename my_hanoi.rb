#!/usr/bin/env ruby

class Hanoi
	attr_reader :disk_num
	attr_accessor :first, :second, :third, :goal, :moves
	def initialize(disk_num)
		@disk_num = disk_num
		@goal = (1..disk_num).to_a.reverse
		@first = goal
		@second = []
		@third = []
		@moves = 0
	end

	def status
		for i in 0...(@disk_num + 3)
			if i == 0
				print "-" * 15
				print "\n"
			elsif i == disk_num + 1
				print "-" * 15
				print "\n"
			elsif i == disk_num + 2
				print "-  1   2   3  -"
				print "\n"
			else
				print "-"
				print "  "
				print first[disk_num - i] || " "
				print "   "
				print second[disk_num - i] || " "
				print "   "
				print third[disk_num - i] || " "
				print "  "
				print "-"
				print "\n"
			end
		end


		# puts "-| " + "-" * @disk_num * 2
		# puts "1| " + first.join(" ")
		# puts "2| " + second.join(" ")
		# puts "3| " + third.join(" ")
		# puts "-| " + "-" * @disk_num * 2
	end

	def play
		status
		while @second != @goal && @third != @goal
			move
		end
		puts "Congratz, you finished in #{moves} moves"
	end

	def move
		select_choice = select
		dest(select_choice)
		status
		@moves += 1
	end

	def select
		puts "Select a Pile (1, 2, 3) that's not empty:"
		select_choice = gets.chomp
		case select_choice
		when "1"
			first.empty? ? select : first.pop
		when "2"
			second.empty? ? select : second.pop
		when "3"
			third.empty? ? select : third.pop
		else
			puts "Invalid Input"
			select
		end
	end

	def dest(select_choice)
		puts "Selected: #{select_choice} \nSelect a Pile (1, 2, 3) to put down the disk:"
		dest_choice = gets.chomp
		case dest_choice
		when "1"
			put_disk?(first, select_choice) ? first.push(select_choice) : dest(select_choice)
		when "2"
			put_disk?(second, select_choice) ? second.push(select_choice) : dest(select_choice)
		when "3"
			put_disk?(third, select_choice) ? third.push(select_choice) : dest(select_choice)
		else
			puts "Invalid Input"
			dest(select_choice)
		end
	end

	def put_disk?(pile, disk)
		(pile.length == 0) || disk < pile.last ? true : false
	end

end

puts "Select Difficulty Level (>= 3): "
level = gets.chomp.to_i
my_hanoi = Hanoi.new(level)
my_hanoi.play






