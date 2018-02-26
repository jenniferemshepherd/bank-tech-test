class Transaction

  attr_reader :amount, :credit, :debit

  def initialize(amount)
    @amount = amount
    @credit = 0
    @debit = 0
    (amount > 0) ? @credit = amount : @debit = amount
  end
end
