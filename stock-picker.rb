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
 
def maximum(values) 
  maximum = 0
  days = nil
  values.each do |key, value|      
    if key > maximum 
      maximum = key
      days = value
    end
  end
  if days != nil && maximum != 0
  return "Day #{days[0]} you buy and day #{days[1]} you sell for a profit of $#{maximum}"
  else 
  "Do not buy on any of these days unless you want to make no or even lose money"
  end
end

def all_diff(stock_values)
  diff = Hash.new(0)
  for i in 0..stock_values.length - 2
    for j in i + 1..stock_values.length - 1
      diff[stock_values[j] - stock_values[i]] = [i,j]
    end
  end
  return diff
end






stock_prices = Array.new(0)
puts "Hello! Please enter the space delimited stock prices you would like us to analyze"
int_inps = gets.chomp
str_ver = int_inps.split(" ")
stock_prices = str_to_int_arr(str_ver)
if stock_prices != nil 
  all_subtract = all_diff(stock_prices)
  if maximum(all_subtract) != nil
    p maximum(all_subtract)
  end
end
