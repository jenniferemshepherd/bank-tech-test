class Transaction

  attr_reader :type, :amount

  def initialize(amount)
    @amount = amount
  end
end
