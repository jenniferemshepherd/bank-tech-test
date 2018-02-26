require_relative 'transaction'

class Account

  attr_reader :balance, :transactions

  def initialize(balance=0)
    @balance =  balance
    @transactions = []
  end

  def credit(amount)
    @balance += amount
    create_credit_transaction(amount)
  end

  def debit(amount)
    @balance -= amount
    create_debit_transaction(amount)
  end

  private
  def create_credit_transaction(amount)
    @transactions << Transaction.new(amount)
  end

  def create_debit_transaction(amount)
    @transactions << Transaction.new(-amount)
  end

end
