class BreakChange

  def self.run
    console = ScreenUtility.new
    change_maker = Change.new

    console.prompt_for_amount
    break_amount = console.user_input
    console.prompt_for_curre ncy
    currency = console.user_input

    if currency.empty?
      currency = [25, 10, 5, 1]
    else
      currency = currency.split(",").map { |coin| coin.to_i }
    end

    coins = Change.make(break_amount, currency)

    console.display_change(coins)
  end
end
