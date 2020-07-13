# Write your code here.
def dictionary(words)
  dictionary = {
    "hello" => 'hi', "to" => '2', "two" => '2', "too" => '2', "for"=> '4', "four" => '4',
  'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&",
}
dictionary.each do |key, val|
  if key == words.downcase
    words = val
  end
end
return words
end

def word_substituter(tweet)
 tweet_word = tweet.split(' ')
  short_words = tweet_word.collect do |x|
    dictionary(x)
  end
  short_words.join(" ")
end

def bulk_tweet_shortener(bulk_tweet)
bulk_tweet.each do |x|
   puts word_substituter(x) #plugs in array of tweets to word_substituter method
 end
end
def selective_tweet_shortener(tweet)
    if tweet.length > 140
     tweet = word_substituter(tweet)
end
tweet
end
def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    short_tweet = short_tweet[0..136] +"..."
  end
  short_tweet
end
