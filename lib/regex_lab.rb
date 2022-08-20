def starts_with_a_vowel?(word)
    start_with_vowel = word.match(/^[aeiouAEIOU]/)
    if(start_with_vowel != nil)
        return true
    end
    false
end
def words_starting_with_un_and_ending_with_ing(text)
    array_of_words = []
    text.split(' ').each do |word|
        if (word.match(/^un.+ing$/) != nil)
            array_of_words.push(word)
        end
    end
    array_of_words
end
def words_five_letters_long(text)
    array_of_words = text.split(' ').grep(/^\w{5}$/)
end
def first_word_capitalized_and_ends_with_punctuation?(text)
    word_array=text.split(' ')
   if (word_array[0].match(/^[A-Z]/) && word_array[-1].match(/[.]$/))
        return true
   end
   false
end

def valid_phone_number?(phone)
    phone_with_regex = phone.scan(/(\d+)/)
    phone_with_regex=phone_with_regex.join('')
    if phone_with_regex.length == 10
        return true
    end 
    false
end
phone = '(800)IloveNY'
puts valid_phone_number?(phone)