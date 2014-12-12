class Change
  STD_VALUES = [25, 10, 5, 1]

  def self.break_with_value(amount, value)
    coins = []
    multiplier = amount / value
    multiplier.times do
      coins << value
    end
    coins
  end

  def self.break_total_with(breaking_amount, currency)
    coins = []

    currency.each do |break_value|
      coins << Change.break_with_value(breaking_amount, break_value)
      breaking_amount %= break_value
    end
    coins.flatten
  end

  def self.make(breaking_amount, currency = STD_VALUES)

    currency.lenght.times do
      min_change = Change.break_total_with(breaking_amount, currency)
      currency.rotate!
    end
  end

  def recursive_formula(breaking_amount, currency)
    currency.each do |value|
      currency.delete(value)
      recursive_formula(breaking_amount, currency)
    end
  end
end
