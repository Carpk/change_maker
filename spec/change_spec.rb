require_relative "../lib/console.rb"

describe "Change" do

  it "should return correct value using standard currency" do
    expect(Change.make(26)).to eq([25,1])
  end

  it "should return correct value using standard currency" do
    expect(Change.make(24)).to eq([10,10,1,1,1,1])
  end

  it "should return correct value using standard currency" do
    expect(Change.make(49)).to eq([25, 10, 10, 1, 1, 1, 1])
  end

  it "should return nothing when passed no value" do
    expect(Change.make(0)).to eq([])
  end

  it "should return correct value using alternate currency" do
    expect(Change.make(26, [10, 25, 1, 5])).to eq([25, 1])
  end

  it "should return correct value using alternate currency" do
    expect(Change.make(14, [10, 7, 1])).to eq([7, 7])
  end
end