require 'account'

describe Account do

  describe 'open account' do
    it 'has a balance of zero on creation' do
      account = Account.new(0)
      expect(account.balance).to equal 0
    end

    it 'can be created with a non-zero balance' do
      account = Account.new(40)
      expect(account.balance).to equal 40
    end
  end

  describe 'deposit and withdraw funds' do
    it 'receives a deposit and increases balance accordingly' do
      account = Account.new()
      account.deposit(30)
      expect(account.balance).to equal 30
    end
  end

end
