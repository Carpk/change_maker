require_relative "../lib/console.rb"

describe "Change" do

  let(:change) {Change.new}
  let(:currency) {[25,10,5,1]}

  describe "should return the correct" do

    it "number of coins with a offset value" do
      expect(change.create_coins(53, 25)).to eq([25, 25])
    end

    it "number of coins with a factor of the value" do
      expect(change.create_coins(24, 8)).to eq([8, 8, 8])
    end

    it "number of coins with a low amount value" do
      expect(change.create_coins(24, 30)).to eq([])
    end

    it "value using standard currency" do
      expect(change.make_change(26, currency)).to eq([25,1])
    end

    it "value using standard currency" do
      expect(change.make_change(24, currency)).to eq([10,10,1,1,1,1])
    end

    it "value using standard currency" do
      expect(change.make_change(49, currency)).to eq([25, 10, 10, 1, 1, 1, 1])
    end

    it "value using alternate currency" do
      expect(change.make_change(26, [10, 25, 1, 5])).to eq([25, 1])
    end

    it "correct value using alternate currency" do
      expect(change.make_change(14, [10, 7, 1])).to eq([7, 7])
    end

    it "value when passed no nothing" do
      expect(change.make_change(0, currency)).to eq([])
    end
  end
end
