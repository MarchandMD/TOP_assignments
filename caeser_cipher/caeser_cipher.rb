def caeser_cipher(str, integer) 
    array = str.codepoints
    array.collect do |number|
        if number == 32 || number <= 63 || number >= 124
            number.chr
        elsif (96..122).include? number
            new_lcase_number = number + integer
            if new_lcase_number > 122
                (new_lcase_number - 26).chr
            else
                new_lcase_number.chr
            end
        elsif number > 64 && number < 90
            new_ucase_number = number + integer
            if new_ucase_number >= 91 
                (new_ucase_number - 26).chr
            else
                new_ucase_number.chr
            end
        end
    end.join('')
end
