# Write your code here.
def dictionary 
  word_subs_hash = {
    'hello' => 'hi',
    'Hello' => 'Hi',
    'to' => '2',
    'To' => '2',
    'two' => '2',
    'Two' => '2',
    'too' => '2',
    'Too' => '2',
    'for' => '4',
    'For' => '4',
    'four' => '4',
    'Four' => '4',
    'be' => 'b',
    'Be' => 'b',
    'you' => 'u',
    'You' => 'u',
    'at' => '@',
    'At' => '@',
    'and' => '&',
    'And' => '&'
  }
  return word_subs_hash
end

def word_substituter(tweet)
  tweet = tweet.split(' ')
  dict_keys = dictionary.keys
  tweet.map! do |word|
    if dict_keys.include?(word)
      word = dictionary[word]
    else 
      word
    end
  end
  tweet = tweet.join(' ')
  return tweet
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.map! do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  return tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
    tweet = tweet[0..139]
  end
  return tweet
end

