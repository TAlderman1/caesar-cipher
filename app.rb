def caeserCipher(word, diff)

    indexes = []
    indexFinal = []
    wordFinal = []
    
    alpha = "abcdefghijklmnopqrstuvwxyz"
    alphabet = alpha.split("")
    word = word.downcase.split("")
    word.each{ |n| indexes.push(alphabet.index(n)) }
    indexes.each{ |e| indexFinal.push(e += diff) }
    indexFinal.each{ |i| 
        if i > 25
            wordFinal.push(alphabet[i-26])
        else
            wordFinal.push(alphabet[i])
        end
    }   
    puts wordFinal.join("")

end

caeserCipher("abcdefg", 1)
