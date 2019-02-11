# Write your code here.
def dictionary
  dict = {"hello" => "hi",
              "to" => "2",
              "two" => "2",
              "too" => "2",
              "for" => "4",
              "four" => "4",
              "be" => "b",
              "you" => "u",
              "at" => "@",
              "and" => "&"}
end

def word_substituter(tweet_string)
  tweet_array = tweet_string.split(" ")
  new_array = tweet_array.map do |word|
      if dictionary.keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
      end
    end
    new_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.map do |ind_array|
    puts word_substituter(ind_array)
  end
end

def selective_tweet_shortener(tweet_string)
  if tweet_string.chars.length > 140
    word_substituter(tweet_string)
  else
    tweet_string
  end
end

def shortened_tweet_truncator(tweet_string)
  short_tweet = word_substituter(tweet_string)
  if short_tweet.chars.length > 140
    return "#{short_tweet[0..136]}..."
  else
    short_tweet
  end
end
