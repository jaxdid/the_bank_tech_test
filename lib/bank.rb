class Bank
  DEFAULT_BALANCE = 2000
  STATEMENT_HEADER = "date || credit || debit || balance"

  attr_accessor :balance, :statement

  def initialize
    self.balance = DEFAULT_BALANCE
    self.statement = [STATEMENT_HEADER]
  end

  def deposit(amount)
    self.balance += amount
    update_statement_for_deposit(amount)
  end

  def withdraw(amount)
    self.balance -= amount
    update_statement_for_withdrawal(amount)
  end

  def print_statement
  end

  # def update_statement(d_amount, w_amount)
  #   statement_elements = [Time.now.strftime("%d/%m/%Y"), d_amount, w_amount, self.balance]
  #   self.statement << statement_elements.join(" || ")
  # end

  private

  def update_statement_for_deposit(amount)
    self.statement << "#{Time.now.strftime("%d/%m/%Y")} || #{amount} ||  || #{self.balance}"
  end

  def update_statement_for_withdrawal(amount)
    self.statement << "#{Time.now.strftime("%d/%m/%Y")} ||  || #{amount} || #{self.balance}"
  end
end