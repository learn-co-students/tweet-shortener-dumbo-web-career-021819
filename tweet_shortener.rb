# Write your code here.
require 'pry'
def dictionary(word)
  translation = {
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
  translation.each do |from, to|
    return to if from == word.downcase
  end
  word
end

def word_substituter(tweet)
  tweet_a = tweet.split
  transform_tweet = tweet_a.collect do |word|
    word = dictionary(word)
  end
  tweet = transform_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_list)
  tweet_list.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet):tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet[0..136] + "..."
  else
    return tweet
  end
end
