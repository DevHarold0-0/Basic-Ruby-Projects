dictionary = [ "below", "down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary, new_hash = Hash.new)
    
    sub = dictionary.map do |e|
        if string[e] == e
            new_hash[e] = dictionary.count(e)
        end
    end
    p new_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)