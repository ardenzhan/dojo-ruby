class BankAccount
  @@accounts = 0

  def initialize
    @account_number = generate_account_number
    @checking = 0
    @saving = 0
    @interest_rate = 0.01
    @@accounts += 1
  end

  attr_reader :account_number, :checking, :saving

  def deposit(amount, type)
    type == "checking" ? @checking += amount : @saving += amount
  end

  def withdraw(amount, type)
    if type == "checking"
      raise "Insufficient Funds, #{@checking} available" unless @checking >= amount
      @checking -= amount
    else
      raise "Insufficient Funds, #{@saving} available" unless @saving >= amount
      @saving -= amount
    end
  end

  def total_money
    return @checking + @saving
  end

  def account_information
    puts "Account Number: #{@account_number}"
    puts "Total: #{self.total_money}"
    puts "Checking: #{@checking}"
    puts "Saving: #{@saving}"
    puts "Interest rate: #{@interest_rate}"
  end

  def self.accounts
    puts "Number of Accounts: #{@@accounts}"
  end

  private
    def generate_account_number
      rand(1..100)
    end
end

b = BankAccount.new
BankAccount.accounts
b.deposit(100, 'checking')
# b.withdraw(100, 'saving')
b.account_information