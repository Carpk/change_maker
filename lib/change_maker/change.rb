class Change

  def create_coins(amount, value)
    coins = []
    multiplier = amount / value
    multiplier.times do
      coins << value
    end
    coins
  end

  def break_total_with(breaking_amount, currency)
    coins = []

    currency.each do |break_value|
      break_value = break_value.to_i
      coins << create_coins(breaking_amount, break_value)
      breaking_amount %= break_value
    end
    coins.flatten
  end

  def make_change(break_amount, currency)
    min_change = create_coins(break_amount, 1)
    currency.length.times do
      potential_change = break_total_with(break_amount, currency)
      min_change = potential_change if potential_change.length < min_change.length
      currency.rotate!
    end
    min_change
  end
end
