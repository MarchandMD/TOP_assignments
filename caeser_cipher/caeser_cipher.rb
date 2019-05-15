def caeser_cipher(str, integer) 
    #Create an array from the string including all characters(punctuation, whitespace, etc.)
    array = str.codepoints
    array.collect do |number|
        if number == 32
            next
        elsif number > 96 && number < 123 
            new_lcase_number = number + integer
            if new_lcase_number > 122
                new_lcase_number - 26
            else
                new_lcase_number
            end
        elsif number > 64 && number < 90
            new_ucase_number = number + integer
            if new_ucase_number > 122
                new_ucase_number - 26
            else
                new_ucase_number
            end
        end
    end


    #array.collect {|x| x.chr}.join('')
end



print caeser_cipher("What a string!", 5)

