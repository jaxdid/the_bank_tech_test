class Bank
  DEFAULT_BALANCE = 0
  STATEMENT_HEADER = "date || credit || debit || balance"

  attr_accessor :balance, :statement

  def initialize
    self.balance = DEFAULT_BALANCE
    self.statement = [STATEMENT_HEADER]
  end

  def deposit(amount)
    self.balance += amount
    self.statement << "#{Time.now.strftime("%d/%m/%Y")} || #{amount} ||  || #{self.balance}"
  end

  def withdraw(amount)
    self.balance -= amount
  end

  def print_statement
  end
end