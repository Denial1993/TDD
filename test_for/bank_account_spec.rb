require "./bank_account"

RSpec.describe BankAccount do
	let(:account){BankAccount.new(10)}  #可以把下面五個測試都省略一行:  account = BankAccount.new(10)

	describe "存錢功能" do
		it "餘額10  存入5  剩 15" do
			account.deposit(5)
			expect(account.balance).to be 15
		end
		
		it "餘額10  存入-5 剩 10 不能存入小於等於0的數字" do
			account.deposit(-5)
			expect(account.balance).to be 10
		end
	end
	
	describe "領錢功能" do
		it "餘額10  領出 5  剩 5" do
			amount = account.withdraw(5)
			expect(amount).to be 5
			expect(account.balance).to be 5
		end
		it "餘額10  領出 20 剩 10 餘額不足" do
			amount = account.withdraw(20)
			expect(amount).to be 0
			expect(account.balance).to be 10
		end
		it "餘額10  領出 -5 剩 10 不能領負數 or 小於0" do
			amount = account.withdraw(-5)
			expect(amount).to be 0
			expect(account.balance).to be 10
		end
	end
end