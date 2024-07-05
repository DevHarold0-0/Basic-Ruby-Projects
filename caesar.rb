print "Give me your word: "
string = gets.chomp

print "Give me your number: "
n = gets.chomp


def caesar_cipher(string, n) 
    
    ascii = string.chars.map do |c|
        int = c.ord
        if int.between?(65, 90) 
            int = ((int + n.to_i - 65) % 26 + 65).chr
        elsif int.between?(97, 122)
            int = ((int + n.to_i - 97) % 26 + 97).chr
        else
            c
        end
    end

    result = ascii.join

    p result
end

caesar_cipher(string, n)





