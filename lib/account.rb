class Account

  attr_reader :balance, :transactions

  def initialize(balance=0)
    @balance =  balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << {credit: amount, balance: @balance}
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << {debit: amount, balance: @balance}
  end

end
