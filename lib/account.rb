class Account 
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def print_balance
    puts "Current Balance: £#{@balance}.00"
  end

  def print_statement
    puts "date || credit || debit || balance\n" + @statement.reverse.join("\n") 
  end

  def deposit(amount, date)
    @balance += amount
    @statement.push("#{date} || #{amount}.00 || || #{@balance}.00")
  end

  def withdraw(amount, date)
    @balance -= amount
    @statement.push("#{date} || || #{amount}.00 || #{@balance}.00")
  end
end