# Write your code here.

def dictionary
  convert = {
   "hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
}
end



def word_substituter(string)
  # replaces long words with their expected short form

    string.split(" ").map do |word|
      
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
      
    end.join(" ")
end


def bulk_tweet_shortener (array)
  
  array.map do |phrase|
    puts word_substituter(phrase)
  end
end



def selective_tweet_shortener(string)
  if string.chars.length > 140  
    word_substituter(string)
  else 
    string 
  end 
end 



def shortened_tweet_truncator(string)
  if word_substituter(string).chars.length > 140
    
    new_string = word_substituter(string).chars[0..138] << "..."
  else
    word_substituter(string)
  end
end











