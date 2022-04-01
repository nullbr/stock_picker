require 'pry'

def stock_picker(prices)
  number_of_days = prices.size
  biggest_profit = 0
  biggest_profit_dates = []
  number_of_days.times do |buy_date|
    next_date = buy_date + 1
    for sell_date in next_date..number_of_days do
      profit = prices[sell_date - 1] - prices[buy_date]
      if biggest_profit < profit
        biggest_profit_dates = [buy_date, sell_date - 1]
        biggest_profit = profit
      end
    end
  end
  puts biggest_profit
  p biggest_profit_dates
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
stock_picker([3, 17, 6, 9, 15, 8, 6, 1, 10])