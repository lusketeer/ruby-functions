# Simple Bank Account Class 

class Account
	attr_accessor :name

	def initialize(params = {})
		@name = params[:name]
		@balance = params[:balance] || 0
	end

	public
	def transaction(amount, pin_entered)
		if pin_entered == pin
			if amount >= 0
				@balance += amount
				puts "You have deposited $#{amount}. New balance: $#{@balance}"
			else
				if @balance + amount >= 0
					@balance += amount
					puts "You have withdrew $#{-amount}. New balance: $#{@balance}"
				else
					puts overdraft_error
				end
			end		
		else
			puts pin_error
		end
	end

	def check_balance(pin_entered)
		puts pin_entered == pin ? "Your current balance: $#{@balance}" : pin_error
	end

	private
	def pin
		@pin = 1234
	end

	def pin_error
		"You have entered the wrong PIN."
	end

	def overdraft_error
		"Insufficient balance to complete the transaction"
	end

end

my_account = Account.new(name: "Luke", balance: 2)
my_account.transaction(100, 1234)
my_account.transaction(-50, 1234)
my_account.transaction(-200, 1234)
my_account.check_balance(12222)
puts my_account.name