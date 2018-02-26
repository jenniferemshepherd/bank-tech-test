require 'transaction'

describe Transaction do
  it 'is instantiated with an amount, transaction type and balance' do
    transaction = Transaction.new(30)
    expect(transaction.amount).to eq 30
  end

  it 'knows it is a credit' do
    transaction = Transaction.new(30)
    expect(transaction.credit).to eq 30
    expect(transaction.debit).to eq 0
  end

  it 'knows it is a debit' do
    transaction = Transaction.new(-3)
    expect(transaction.credit).to eq 0
    expect(transaction.debit).to eq -3
  end

end
