# Write your code here.

def word_substituter(str)
  dictionary = {"hello" => "hi ", "to" => "2", "two" => "2", "too" => "2","for" => "4", "four"  => "4", "For" => "4",
  'be'  => 'b',
  'you'  => 'u',
  "at"  => "@",
  "and"  => "&"}
  arr = str.split(" ")
  new_arr = []
  arr.each do |word|
    if dictionary.keys.include?(word)
      new_arr << dictionary[word]
    else
      new_arr << word
    end
  end
  new_arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if str.length > 140
    str[0..136] + "..."
  else
    str
  end
end
