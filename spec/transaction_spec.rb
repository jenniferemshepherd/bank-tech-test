require 'transaction'

describe Transaction do
  it 'is instantiated with an amount, transaction type and balance' do
    transaction = Transaction.new(30)
    expect(transaction.amount).to eq 30
  end

end
