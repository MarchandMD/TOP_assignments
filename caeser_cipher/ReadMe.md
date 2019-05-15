How I arrived at this solution:

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