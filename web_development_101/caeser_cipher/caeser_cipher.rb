def caesar_cipher(str, integer)
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
  end.join("")
end

#p caesar_cipher("What a string!", 5)
#p caesar_cipher("Holy moly things get goofy!", 6)
#p caesar_cipher("Keep studying! You're doing great!", 1)
#p caesar_cipher("If I only had a brain...", 23)
#p caesar_cipher("U wot mate?", 2)
