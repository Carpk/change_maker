class ScreenUtility

  def user_input
    gets.chomp
  end

  def prompt_for_currency
    puts "What currencies would you like to use? (defaults to [25,10,5,1])"
  end

  def prompt_for_amount
    puts "How much would you like to break?"
  end

  def display_change(coins)
    puts "You will recieve back: #{coins}"
  end
end