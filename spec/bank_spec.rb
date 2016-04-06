require "bank"

describe Bank do
  it "allows deposits" do
    expect(subject).to respond_to(:deposit)
  end

  it "allows deposits" do
    expect(subject).to respond_to(:withdraw)
  end

  it "allows deposits" do
    expect(subject).to respond_to(:print_statement)
  end

  describe "#deposit" do
    it "adds the argument to your balance" do
      balance = 0
      amount = 1
      expect{subject.deposit(amount)}.to change{subject.balance}.by(amount) 
    end
  end
end