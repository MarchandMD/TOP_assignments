

def stock_picker arr
    buy_prices = arr[0...-1]
    sell_prices = arr[1..-1]

    pairs = []

    while buy_prices.length > 0
        sell_prices.collect do |x|
            pairs<< [buy_prices[0], x]
        end
        buy_prices.shift
        sell_prices.shift
    end

    best_profit = pairs.collect {|x| x[0] - x[1]}.min

    best_prices = pairs.filter! {|x| x[0] - x[1] == best_profit}.flatten!

    [arr.find_index(best_prices[0]), arr.find_index(best_prices[1])]
end

# p stock_picker([17,3,6,9,15,8,6,1,10])
# p stock_picker([4,6,9,34,28,12,2,16,8,44])
# p stock_picker([20,5, 8, 4, 18, 25, 1, 6,4,500])
# p stock_picker([6,10,12,13,4,5,3,4,29,100,4,5,9])
# p stock_picker([6,4,5,4,4,5,3,4,20,30,4,5,9])