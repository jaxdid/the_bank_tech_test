class Bank
  attr_accessor :balance

  def initialize
    self.balance = 0
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