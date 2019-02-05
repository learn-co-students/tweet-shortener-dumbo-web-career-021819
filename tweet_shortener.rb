# Write your code here.
require 'pry'

def dictionary
   {
  "hello" => 'hi',
  "Hello" => 'Hi',
  "to" => '2',
  "To" => '2',
  "two" => '2',
  "Two" => '2',
  "too" => '2',
  "Too" => '2',
  "for" => '4',
  "For" => '4',
  "four" => '4',
  "Four" => '4',
  'be' => 'b',
  'Be' => 'B',
  'you' => 'u',
  'You' => 'U',
  "at" => "@" ,
  "At" => "@" ,
  "and" => "&",
  "And" => "&"
}
end


def word_substituter(tweet)
  tweet_array = tweet.split(' ')

  tweet_array.collect do |word|
    if dictionary.keys.include?(word)
      #binding.pry
      word = dictionary[word]
    else
      word
    end
  end.join(" ")
end


def bulk_tweet_shortener(tweets_array)

  tweets_array.each do |tweets|
    puts word_substituter(tweets)
  end

end

def selective_tweet_shortener(tweet)
  # that only does the substitutions if the tweet is longer than 140 characters. If the tweet is 140 characters or shorter, just return the original tweet.
  if tweet.length > 140
    tweet_array = tweet.split(' ')
    tweet_array.collect do |word|
      if dictionary.keys.include?(word)
        #binding.pry
        word = dictionary[word]
      else
        word
      end
    end.join(" ")

  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet_array = tweet.split(' ')
    tweet_array.collect do |word|
      if dictionary.keys.include?(word)
        #binding.pry
        word = dictionary[word]
      else
        word
      end
    end.join(" ")[1..140]
  else tweet
  end
end
