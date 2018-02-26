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
    before do
    end

    it 'receives a deposit and increases balance accordingly' do
      account = Account.new()
      account.credit(30)
      expect(account.balance).to equal 30
    end

    it 'accepts a withdrawal and decreases balance accordingly' do
      account = Account.new()
      account.credit(30)
      account.debit(12)
      expect(account.balance).to equal 18
    end

    it 'stores a transaction' do
      account = Account.new()
      account.credit(30)
      expect(account.transactions).to include({credit: 30, balance: 30})
    end

    it 'stores a transaction' do
      account = Account.new()
      account.credit(30)
      account.debit(12)
      expect(account.transactions).to include({debit: 12, balance: 18})
    end
  end

end
