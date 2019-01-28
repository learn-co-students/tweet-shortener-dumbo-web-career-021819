def word_substituter(strng)
  
subs = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" =>  '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"
}

new_strng = strng.split(" ")
new_strng.each_with_index do |word, index|
  subs.each do |key, value|
    if key == word
      new_strng[index] = value 
    end 
  end 
end 
new_strng.join(" ")
end 

def bulk_tweet_shortener(tweets)
  
  subs = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" =>  '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"
}

tweets.each do |tweet|

new_strng = tweet.split(" ")
new_strng.each_with_index do |word, index|
  subs.each do |key, value|
    if key.upcase == word.upcase
      new_strng[index] = value 
    end 
  end 
end 
puts "#{new_strng.join(" ")}"
end   
end 


def selective_tweet_shortener(tweet)

  subs = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" =>  '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"
}

if tweet.length >= 140
  new_strng = tweet.split(" ")
  new_strng.each_with_index do |word, index|
    subs.each do |key, value|
      if key.upcase == word.upcase
        new_strng[index] = value 
      end 
    end 
  end 
  new_strng.join(" ")
  else 
    tweet 
  end 
end 

def shortened_tweet_truncator(tweet)

  subs = {
"hello" => 'hi',
"to" => '2',
"two" => '2',
"too" => '2', 
"for" =>  '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@", 
"and" => "&"
}

if tweet.length >= 140
  new_strng = tweet.split(" ")
  new_strng.each_with_index do |word, index|
    subs.each do |key, value|
      if key.upcase == word.upcase
        new_strng[index] = value 
      end 
    end 
  end 
  how_long = new_strng.join(" ")
  
  if how_long.length > 140
    how_long[137..how_long.length] = "..."
    how_long
  else
    how_long
  end 
    
  else 
    tweet 
  end 
end 



