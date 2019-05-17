

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

p stock_picker([17,3,6,9,15,8,6,1,10])