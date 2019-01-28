# Write your code here.

#{}```
#{}"hello" becomes 'hi'
#{}"to, two, too" become '2'
#{}"for, four" become '4'
#'be' becomes 'b'
#'you' becomes 'u'
#{}"at" becomes "@"
#{}"and" becomes "&"
#{}```

def dictionary()

 replacements = {
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
    replacements
end

def word_substituter(string)
holdingarr = string.split(" ")
holdingarr.map do |word|
  dictionary.each do |key, value|
    word = value if word.downcase == key
  end
  word
end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |string|
    puts word_substituter(string)
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
    outString = tweets[0,137]
    outString += "..."
    outString
  else
    word_substituter(tweets)
  end
end



string = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
puts shortened_tweet_truncator(string)
