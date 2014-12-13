class BreakChange

  def self.run
    console = ScreenUtility.new
    change = Change.new
    validator = ValidIO.new

    console.prompt_for_amount
    break_amount = console.user_input
    console.prompt_for_currency
    currency = console.user_input

    currency = validator.validate_coins(currency)
    break_amount = validator.validate_amount(break_amount)
    coins = change.make_change(break_amount, currency)

    console.display_change(coins)
  end
end
