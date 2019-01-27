dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

def substrings(string, dictionary)
  match_result = {}
  entry_words = string.downcase.split(" ")
  entry_words.each do |entry|
    dictionary.each do |word|
      if entry.match(word)
        if match_result[word]
          match_result[word] += 1
        else
          match_result[word] = 1
        end
      end
    end
  end
  puts match_result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)