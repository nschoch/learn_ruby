#write your code here
def echo(text)
    text
end

def shout(text)
    text.upcase
end

def repeat(text, count = 2)
    output = ''
    counter = 1
    while counter <= count
        output += text + ' '
        counter += 1
    end
    output.strip!
    output
end

def start_of_word(text, count)
    text[0..(count-1)]
end

def first_word(text)
    firstSpace = text.index(' ')
    text[0..(firstSpace-1)]
end

def titleize(text)
    textArray = text.split(' ')
    newString = ''
    counter = 0

    textArray.each do |word|
        counter += 1
        if(word != 'the' && word != 'of' && word != 'for' && word != 'and' && word != 'over')
            newString += word.capitalize + ' '
        elsif (counter == 1)
            newString += word.capitalize + ' '
        else
            newString += word + ' '
        end
    end
    newString.strip!
end
