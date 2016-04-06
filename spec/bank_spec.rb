require "bank"

describe Bank do
  it "has a balance" do
    expect(subject).to respond_to(:balance)
  end

  it "allows deposits" do
    expect(subject).to respond_to(:deposit)
  end

  it "allows withdrawals" do
    expect(subject).to respond_to(:withdraw)
  end

  it "has a statement (of account activity)" do
    expect(subject).to respond_to(:statement)
  end  

  it "allows printing of statements" do
    expect(subject).to respond_to(:print_statement)
  end

  describe "#deposit" do
    it "adds an amount to the balance" do
      subject.balance = 0
      amount = 1
      expect{subject.deposit(amount)}.to change{subject.balance}.by(amount) 
    end

    it "updates the bank balance" do
      current_date = Time.now.strftime("%d/%m/%Y") 
      subject.balance = 10
      subject.deposit(1)
      expect(subject.statement.last).to eq "#{current_date} || 1 ||  || 11"
      
    end
  end

  describe "#withdraw" do
    it "subtracts an amount from the balance" do
      subject.balance = 1
      amount = 1
      expect{subject.withdraw(amount)}.to change{subject.balance}.by(-amount) 
    end
  end
end