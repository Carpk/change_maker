class BreakChange

  def self.query_user
    ScreenUtility.prompt_for_amount
    break_amount = ScreenUtility.user_input

    ScreenUtility.prompt_for_currency
    currency = ScreenUtility.user_input

    {break_amount: break_amount, currency: currency}
  end

  def self.validate_data(user_input)
    validator = ValidIO.new

    user_input[:currency] = validator.validate_coins(user_input[:currency])
    user_input[:break_amount] = validator.validate_amount(user_input[:break_amount])

    user_input
  end

  def self.run
    input_set = BreakChange.query_user
    input_set = BreakChange.validate_data(input_set)

    coins =  Change.new.make_change(input_set[:break_amount], input_set[:currency])

    ScreenUtility.display_change(coins)
  end
end
