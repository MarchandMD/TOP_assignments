###How I arrived at the Caeser_Cipher solution:

1. Convert the string to an array and unicode numbers as soon as possible

2. Array#collect will do the heavy lifting

3. if statements will control the flow

4. Nested if statements will control the flow for cycling through the alphabet

5. The goal is to shift the letters by a specific number of letters in the alphabet, while maintaining case and spacing and punctuation.

6. Converting to numbers allows for easy application of logic

7. The first step in the logic is to convert the spaces and non-alpha unicode integers back to alphanumeric/punctuation/space characters

8. Else if the number is lowercase, add the shift amount to the number and test for existing within the permissible range

9. Do the same for uppercase, but DRY regarding logic evaluation

10. join the array with the Array#join method

###How I arrived at the stock_picker solution:

1. It's not possible to sell on day 0, and it's not possible to turn a profit buying on the last day

2. I want to create an array of pairs that combine one element from the buy_prices with every element of the sell_prices

3. Remove the first element from each array

4. While the length of buy_prices is greater than 0, repeat steps 2 and 3

5. I'll collect the difference of the pairs and then invoke the Array#minimum method and assign it to best_profit

6. Now that I have the best profit, I'll filter the pairs array destructively to locate the pair that produced the best profit. I'll also flatten the array

7. I'll now find the index in the array of stock prices to locate which indicies hold the best buy price and the best sale price

