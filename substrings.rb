def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, word|
    lowercase_string = string.downcase
    while (lowercase_string.include?(word))
      result[word] += 1
      lowercase_string.slice!(word)
    end
    result
  end
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)