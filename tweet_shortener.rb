def dictionary
  {
    hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    four: '4',
    be: 'b',
    you: 'u',
    at: '@',
    and: '&'
  }
end

def word_substituter(tweet)
  short_tweet = []
  tweet.split(' ').each do |elem|
    word = elem
    dictionary.each do |long_word, short_word|
      if elem.downcase == long_word.to_s
        word = short_word
      end
    end
    short_tweet << word
  end
  short_tweet.join(' ')
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    return short_tweet[0..136] + '...'
  else
    return short_tweet
  end
end