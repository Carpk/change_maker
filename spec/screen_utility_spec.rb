require_relative "../lib/console.rb"

describe "ScreenUtility" do

  let(:console) {ScreenUtility.new}

  describe "should prompt user" do

    it "for currency" do
      prompt = "What currencies would you like to use? (defaults to 25,10,5,1)\n"
      expect { ScreenUtility.prompt_for_currency }.to output(prompt).to_stdout
    end

    it "for breaking amount" do
      prompt = "How much would you like to break?\n"
      expect { ScreenUtility.prompt_for_amount }.to output(prompt).to_stdout
    end
  end

  it "should return correct value" do
    prompt = "You will recieve back: 14\n"
    expect { ScreenUtility.display_change(14) }.to output(prompt).to_stdout
  end

  it "should return correct value" do
    prompt = "You will recieve back: 8\n"
    expect { ScreenUtility.display_change(8) }.to output(prompt).to_stdout
  end

  it "should return correct value" do
    prompt = "You will recieve back: 304\n"
    expect { ScreenUtility.display_change(304) }.to output(prompt).to_stdout
  end
end