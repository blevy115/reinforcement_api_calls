require 'httparty'

words_response = HTTParty.get('http://api.datamuse.com/sug?s=initalize')

words = JSON.parse(words_response.body)

suggestions = []
words.each do |word|
  suggestions << word["word"]
end

puts suggestions
