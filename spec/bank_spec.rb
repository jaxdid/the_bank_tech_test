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
end