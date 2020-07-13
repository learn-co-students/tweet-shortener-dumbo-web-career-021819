dictionary = {
  'hello': 'hi',
  'to': '2',
  'two': '2',
  'too': '2',
  'for': '4',
  'four': '4',
  'be': 'b',
  'you': 'u',
  'at': '@',
  'and': '&'
}

def word_substituter(sentenceStr)
  dictionary = {
  'hello': 'hi',
  'to': '2',
  'two': '2',
  'too': '2',
  'for': '4',
  'For': '4',
  'four': '4',
  'be': 'b',
  'you': 'u',
  'at': '@',
  'and': '&'
}

  finalArr = []
  sentenceArr = sentenceStr.split(" ")
  
  sentenceArr.each { |x|
    word = x.to_sym
    if dictionary[word] == nil
      finalArr.push(x)
    elsif dictionary[word] != nil
      finalArr.push(dictionary[word])
    end
  }
  
  return finalArr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.map { |x| 
  puts word_substituter(x) 
  }
end

def selective_tweet_shortener(tweetStr)
  if tweetStr.length > 140
    word_substituter(tweetStr)
  else
    tweetStr
  end
end

def shortened_tweet_truncator(tweetStr)
    if tweetStr.length > 140
    return tweetStr[0..139]
  else
    tweetStr
  end
end