def int_check(s_input) 
  return (s_input == "0") || (s_input.to_i != 0)
end

def str_to_int_arr(array)
  array.map do |str|
    if int_check(str) 
      str.to_i
    else
      puts "The array contains values that are not integers!"
      return
    end
  end
end

stock_prices = Array.new(0)
puts "Hello! Please enter the space delimited stock prices you would like us to analyze"
int_inps = gets.chomp
str_ver = int_inps.split(" ")
stock_prices = str_to_int_arr(str_ver)
if stock_prices != nil 
puts "Great. Here are the days you should buy and sell:"
end
