class Transaction

  attr_reader :amount, :credit, :debit, :current_balance

  def initialize(amount,balance)
    @amount = amount
    @credit = 0
    @debit = 0
    assign_credit_or_debit(amount)
    @current_balance = balance
  end

  def assign_credit_or_debit(amount)
    (amount > 0) ? @credit = amount : @debit = amount
  end
end
