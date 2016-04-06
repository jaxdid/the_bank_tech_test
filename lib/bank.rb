class Bank
  DEFAULT_BALANCE = 0

  attr_accessor :balance, :statement

  def initialize
    self.balance = DEFAULT_BALANCE
  end

  def deposit(amount)
    self.balance += amount
  end

  def withdraw(amount)
    self.balance -= amount
  end

  def print_statement
  end
end