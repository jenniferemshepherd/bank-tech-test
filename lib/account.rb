class Account

  attr_reader :balance, :transactions

  def initialize(balance=0)
    @balance =  balance
    @transactions = []
  end

  def credit(amount)
    @balance += amount
    @transactions << {credit: amount, balance: @balance}
  end

  def debit(amount)
    @balance -= amount
    @transactions << {debit: amount, balance: @balance}
  end

end
