class Account

  attr_reader :balance, :transactions

  def initialize(balance=0)
    @balance =  balance
    @transactions = []
  end

  def credit(amount)
    @balance += amount
    create_transaction("credit",amount)
  end

  def debit(amount)
    @balance -= amount
    create_transaction("debit",amount)
  end

private
  def create_transaction(type,amount)
    @transactions << Transaction.new(type,amount)
  end

end
