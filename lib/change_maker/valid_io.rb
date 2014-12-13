class ValidIO

  def validate_coins(coins)
    coins = coins.split(",").map { |coin| coin.to_i }
    coins.delete_if { |coin| coin.class != Fixnum || coin == 0}

    if coins.empty?
      coins = [25, 10, 5, 1]
    end
    coins
  end

  def validate_amount(number)
    number = number.to_i
    number = 0 if number.class != Fixnum
    number
  end

end
