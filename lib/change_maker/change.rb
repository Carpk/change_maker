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

  def recursive_formula(breaking_amount, currency)
    coins = []
    return coins if breaking_amount == 0
    currency.each do |value|
      breaking_amount = break_total_with
      currency.delete(value)
      coins << recursive_formula(breaking_amount, currency)
    end
  end

  def make_change(break_amount, currency)
    min_change = Array.new(15, '#')
    currency.length.times do
      potential_change = break_total_with(break_amount, currency)
      min_change = potential_change if potential_change.length < min_change.length
      currency.rotate!
    end
    min_change
  end

end
