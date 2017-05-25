class BankAccount
  attr_accessor :balance

  @@interest_rate = 0.05
  @@accounts = []

  def initialize
    @balance = 0
  end

  def deposit(d_amount)
    @balance += d_amount
  end

  def withdraw (w_amount)
    @balance -= w_amount
  end

  def self.create
    new_account = BankAccount.new
    @@accounts << new_account
    new_account
  end


# def self.show
#  @@accounts
#end

  def self.total_funds

  total = 0
  @@accounts.each do |account|
    total += account.balance
  end
    total
  end

  def self.interest_time
    @@accounts.each do |account|
    print account.balance
    account.balance += @@interest_rate * account.balance
    puts account.balance
    end
  end
end
