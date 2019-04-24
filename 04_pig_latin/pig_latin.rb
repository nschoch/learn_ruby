#write your code here

def translate(phrase)
  translated_phrase = ''
  phrase_array = phrase.split(' ')

  phrase_array.each do |word|
    translated_word = ''
    first_vowel = word.index(/[aeiou]/)
    qu_location = word.downcase.index('qu')

    if (qu_location)
      translated_word += word[qu_location+2..] + word[0..qu_location+1]
    else
      translated_word += word[first_vowel..]
      
      if (first_vowel != 0)
        translated_word += word[0..first_vowel-1]
      end
    end
    translated_word += 'ay'
    translated_phrase += translated_word + ' '
  end

  translated_phrase.strip

end