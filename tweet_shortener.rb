# Write your code here.

#{}```
#{}"hello" becomes 'hi'
#{}"to, two, too" become '2'
#{}"for, four" become '4'
#'be' becomes 'b'
#'you' becomes 'u'
#{}"at" becomes "@"
#{}"and" becomes "&"
#{}```

def dictionary(string)
    string = string.gsub(/\btwo\b/,"2")
    string = string.gsub(/\btoo\b/,"2")
    string = string.gsub(/\bto\b/,"2")
    string = string.gsub(/\bfor\b/,"4")
    string = string.gsub(/\bfour\b/,"4")
    string = string.gsub(/\bbe\b/,"b")
    string = string.gsub(/\byou\b/,"u")
    string = string.gsub(/\bat\b/,"@")
    string = string.gsub(/\band\b/,"&")
    puts "#{string}"

end
wordys = "Hey guys, can anyone and teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

dictionary(wordys)
