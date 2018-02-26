class Transaction

  attr_reader :amount, :credit, :debit

  def initialize(amount)
    @amount = amount
    @credit = 0
    @debit = 0
    assign_credit_or_debit(amount)
  end

  def assign_credit_or_debit(amount)
    (amount > 0) ? @credit = amount : @debit = amount
  end
end
