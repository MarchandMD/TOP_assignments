def caeser_cipher(str, integer) 
    #Create an array from the string including all characters(punctuation, whitespace, etc.)
    array = str.codepoints
    array.collect do |number|
        if number == 32
            next
        elsif number > 96 && number < 123 || number > 64 && number < 90
            (number + integer).chr
        end
    end


    #array.collect {|x| x.chr}.join('')
end



puts caeser_cipher("What a string!", 5)