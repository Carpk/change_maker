require_relative "../lib/console.rb"

describe "ValidIO" do

  let(:validator) {ValidIO.new}

  describe "returns the correct value when" do

    it "given an empty array" do
      coins = ""
      expect(validator.validate_coins(coins)).to eq([25, 10, 5, 1])
    end

    it "given something other than a number" do
      coins = "hello"
      expect(validator.validate_coins(coins)).to eq([25, 10, 5, 1])
    end

    it "given a single number" do
      coins = "3"
      expect(validator.validate_coins(coins)).to eq([3])
    end

    it "given something other than a number inside an array" do
      coins = "25, hello, 6, [], 1"
      expect(validator.validate_coins(coins)).to eq([25, 6, 1])
    end
  end

  it "validates amount to be a number" do
    amount = "25"
    expect(validator.validate_amount(amount)).to eq(25)
  end

  it "changes number to default value when given a string" do
    amount = "hello"
    expect(validator.validate_amount(amount)).to eq(0)
  end

  it "uses first value when passed multiple values" do
    amount = "25 18"
    expect(validator.validate_amount(amount)).to eq(25)
  end

  it "uses first value when passed multiple values" do
    amount = "25, 34"
    expect(validator.validate_amount(amount)).to eq(25)
  end
end
