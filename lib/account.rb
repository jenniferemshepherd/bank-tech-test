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

  def print_statement
    output = "credit || debit || balance /n "
    @transactions.each do |transaction|
      output += "#{transaction.credit} || #{transaction.debit} || #{transaction.current_balance}"
    end
    output
  end

  private
  def create_credit_transaction(amount)
    @transactions << Transaction.new(amount, @balance)
  end

  def create_debit_transaction(amount)
    @transactions << Transaction.new(-amount, @balance)
  end

end
