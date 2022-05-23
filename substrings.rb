#finds substrings from given array of strings
dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#EXAMPLES:
#substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }
#substrings("Howdy partner, sit down! How's it going?", dictionary)
#{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(string, dictionary)
  string = string.downcase()
  hash_of_substrings = dictionary.reduce(Hash.new(0)) do |acc, word|
    if string.include?(word.downcase())
                              #looks for if the word appears more than once
      acc[word.downcase()] += string.scan(word.downcase()).count
    end
    acc
  end
end

puts(substrings("Howdy partner, sit down! How's it going?", dict))