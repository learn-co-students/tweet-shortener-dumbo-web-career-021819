# Write your code here.

def dictionary(word)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "For" => "4",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  if dictionary.has_key?(word) == true
    dictionary[word]
  else
    word
  end
end

def word_substituter(tweet)
  array_tweet = tweet.split(" ")
  # "OMG you guys" becomes ["OMG", "you", "guys"]
  array_shortened_tweet = []
  array_tweet.each do |word|
    array_shortened_tweet << dictionary(word)
  end
  # ["OMG", "you", "guys"] becomes ["OMG", "u", "guys"]
  shortened_tweet = array_shortened_tweet.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  # array_tweets = ["OMG you guys", "OMG you guys", "OMG you guys"]
  array_shortened_tweets = []
  array_tweets.each do |tweet|
    array_shortened_tweets << word_substituter(tweet)
  end
  # array_shortened_tweets = ["OMG u guys", "OMG u guys", "OMG u guys"]
  array_shortened_tweets.each do |shortened_tweet|
    puts shortened_tweet
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length <= 140
    shortened_tweet
  else
    shortened_tweet[0..135] + " ..."
  end
end

