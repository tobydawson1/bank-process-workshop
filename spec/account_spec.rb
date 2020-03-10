require 'account'

describe Account do
  describe '#new' do
    it 'initializes with a print balance set to 0' do
      expect(subject.balance).to eq 0
    end

    it 'initializes with an empty statement' do
      expect(subject.statement).to eq []
    end
  end

  describe '#print_balance' do
    it 'prints the account balance' do
      expect{subject.print_balance}.to output("Current Balance: £0.00\n").to_stdout
    end
  end

  describe '#print_statement' do
    it 'prints the account statement' do
      expect {subject.print_statement}.to output("date || credit || debit || balance\n").to_stdout
    end
  end

  describe '#deposit' do
    it 'increases the account balance' do
      subject.deposit(1, 01/01/2020)
      expect {subject.print_balance}.to output("Current Balance: £1.00\n").to_stdout
    end

    it 'makes an entry on the statement' do
      subject.deposit(1, "01/01/2020")
      expect {subject.print_statement}.to output("date || credit || debit || balance\n01/01/2020 || 1.00 || || 1.00\n").to_stdout
    end

    it 'increases the account balance over multiple transations' do
      subject.deposit(1, "01/01/2020")
      subject.deposit(1, "02/01/2020")
      expect {subject.print_balance}.to output("Current Balance: £2.00\n").to_stdout
    end

    it 'makes multiple entries to the statment variable' do
      subject.deposit(1, "01/01/2020")
      subject.deposit(1, "02/01/2020")
      expect {subject.print_statement}.to output("date || credit || debit || balance\n02/01/2020 || 1.00 || || 2.00\n01/01/2020 || 1.00 || || 1.00\n").to_stdout
    end
  end

  describe '#withdraw' do
    it 'decreases the account balance' do
      subject.deposit(1, "01/01/2020")
      subject.deposit(1, "02/01/2020")
      subject.withdraw(1, "03/01/2020")
      expect {subject.print_balance}.to output("Current Balance: £1.00\n").to_stdout
    end

    it 'makes multiple entries to the statment variable' do
      subject.deposit(1, "01/01/2020")
      subject.deposit(1, "02/01/2020")
      subject.withdraw(1, "03/01/2020")
      expect {subject.print_statement}.to output("date || credit || debit || balance\n03/01/2020 || || 1.00 || 1.00\n02/01/2020 || 1.00 || || 2.00\n01/01/2020 || 1.00 || || 1.00\n").to_stdout
    end

    it 'takes in final acceptance criteria' do
      subject.deposit(1000, "10/01/2012")
      subject.deposit(2000, "13/01/2012")
      subject.withdraw(500, "14/01/2012")
      expect {subject.print_balance}.to output("Current Balance: £2500.00\n").to_stdout
      expect {subject.print_statement}.to output("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end