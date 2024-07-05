print "Give me your word: "
string = gets.chomp

print "Give me your number: "
n = gets.chomp


def caesar_cipher(string, n) 
    ascii = string.chars.map(&:ord)

    

    # shifted = ascii.map { |c| (c + n.to_i - 65) % 26 + 65 }

    shifted = ascii.map do |c|
        #exceptions
        if c == 32
            " "
        elsif c == 33 
            "!"

        #cipher formulas
        elsif c.chr == c.chr.upcase
            (c + n.to_i - 65) % 26 + 65
        elsif c.chr == c.chr.downcase
            (c + n.to_i - 97) % 26 + 97
        end
    end



    encrypt = shifted.map { |c| c.chr }.join

    puts encrypt
end

caesar_cipher(string, n)