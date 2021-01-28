class Caesar

        def caesar_cipher(text,number)
            
            characters_to_number = text.split('').map! {|letter|  letter.ord }

            
            caesar_cipher_text = characters_to_number.map! {|numbers| 
            if numbers + number > "Z".ord && numbers + number < "a".ord
            numbers = "A".ord + (number - ("Z".ord - numbers))-1
            
            elsif numbers + number > "z".ord
            numbers = "a".ord + (number - ("z".ord - numbers))-1
            
            
            elsif (numbers+number).between?(65,90) || numbers.between?(97,122) 
            numbers = numbers + number
            
            else
            numbers = numbers
            
            end
            
            
            } 
            
            caesar_cipher_text.map! do |letter| letter.chr
            end
            caesar_cipher_text.join
            
        end
end

cae = Caesar.new
p cae.caesar_cipher("What a string!", 5)