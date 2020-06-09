class BankAccount
	
	def initialize(amount)
		@amount = amount
	end
	
	def balance
		@amount
	end

	def deposit(amount)
		if amount > 0
			@amount = @amount + amount		
		end
	end

	def withdraw(amount)
		if @amount >= amount && amount > 0 
			@amount = @amount - amount	
		else
			return 0
		end	
	end

end
