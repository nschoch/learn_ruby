class Book
# write your code here
    def initialize()
        @title = title
    end

    def title
        titleize(@title.to_s)
    end

    def title=(text)
        @title = text.to_s
    end

end

def titleize(text)
    textArray = text.split(' ')
    newString = ''
    counter = 0

    textArray.each do |word|
        counter += 1
        if(word != 'the' && word != 'of' && word != 'for' && 
           word != 'and' && word != 'over' && word!= 'in' &&
           word != 'a' && word != 'an')
            newString += word.capitalize + ' '
        elsif (counter == 1)
            newString += word.capitalize + ' '
        else
            newString += word + ' '
        end
    end
    newString.strip!
end