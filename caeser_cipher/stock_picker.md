How I arrived at the solution: 

1. It's not possible to sell on day 0, and it's not possible to turn a profit buying on the last day

2. I want to create an array of pairs that combine one element from the buy_prices with every element of the sell_prices

3. Remove the first element from each array

4. While the length of buy_prices is greater than 0, repeat steps 2 and 3

5. I'll collect the difference of the pairs and then invoke the Array#minimum method and assign it to best_profit

6. Now that I have the best profit, I'll filter the pairs array destructively to locate the pair that produced the best profit. I'll also flatten the array

7. I'll now find the index in the array of stock prices to locate which indicies hold the best buy price and the best sale price