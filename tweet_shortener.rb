# Write your code here.
def dictionary
  {"hello"=>'hi',
  "to"=>'2',
  "two"=>'2',
  "too"=>'2',
  "for"=>'4',
  "four"=>'4',
  'be'=>'b',
  'you'=>'u',
  "at"=>"@",
  "and"=>"&"}
end

#dictionary["hello"]

def word_substituter(string)
  string.split.map {|w| dictionary.keys.include?(w.downcase) ? w = dictionary[w.downcase] : w}.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(string)
  string.size > 140 ? word_substituter(string) : string
end

def shortened_tweet_truncator(string)
  string.size > 140 ? "#{string[0..136]}..." : string
end
