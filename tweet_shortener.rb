# Write your code here.
def dictionary
  words = {
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

#Does not work for every situation (For -- capital letters)

#def word_substituter(tweets)
  #tweets = tweets.split(" ")
  #dictionary.each do |key, value|
    #tweets.each do |word|
      #if word == key
      #word.replace(value)
      #end
    #end
  #end
#tweets.join(" ")
#end

def word_substituter(tweets)
  tweets.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(tweets)
  if tweets.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweets)
  if word_substituter(tweets).length > 140
    word_substituter(tweets)[0..136] + "..."
  else
    tweets
  end
end
