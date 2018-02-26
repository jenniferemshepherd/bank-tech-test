require 'account'

describe Account do
  it 'has a balance of zero on creation' do
    account = Account.new(0)
    expect(account.balance).to equal 0
  end
end
