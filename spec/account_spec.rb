require 'account'

describe Account do

  subject(:account) {described_class.new()}
  let(:transaction) { double :transaction }

  describe 'open account' do
    it 'has a balance of zero on creation' do
      expect(account.balance).to equal 0
    end

    it 'can be created with a non-zero balance' do
      account = Account.new(40)
      expect(account.balance).to equal 40
    end
  end

  describe 'deposit and withdraw funds' do
    before do
      account.credit(30)
    end

    it 'receives a deposit and increases balance accordingly' do
      expect(account.balance).to equal 30
    end

    it 'accepts a withdrawal and decreases balance accordingly' do
      account.debit(12)
      expect(account.balance).to equal 18
    end

    it 'stores a transaction' do
      expect(account.transactions.length).to eq 1
    end

    it 'stores more than one transaction' do
      account.debit(12)
      expect(account.transactions.length).to eq 2
    end

    it 'stores more than one transaction' do
      account.debit(12)
      account.debit(1)
      expect(account.transactions[1].current_balance).to eq 18
    end
  end

  describe 'printer' do
    before do
    end

    it 'prints a statement' do
      account.credit(30)
      expect(account.print_statement).to eq("credit || debit || balance\n30 || 0 || 30")
    end
  end
end
