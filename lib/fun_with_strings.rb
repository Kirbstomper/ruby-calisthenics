module FunWithStrings
  def palindrome?
    # your code here
    palString = self.gsub(/\W+/, '').downcase #Downcases string for easier comparison
    return palString == palString.reverse #if string is equal to its reverse its a palindrome
  end
  
  def count_words
    # your code here
    wordHash = Hash.new(0)
    hashString = self.gsub(/[^\w\s]/,'').downcase #replaces all not letters with whitespace and downcases string
    hashString.split(" ").each {|word| wordHash[word]+=1 } #Counts all words by incrementing hash at word
    return wordHash
  end
  
  def anagram_groups
    # your code here
   anagrams = [] #array of anagrams we will return
   ana_hash = Hash.new{|h,k| h[k] = []} #The hash table where the value is an array
   words = self.split(' ')
   words.each {|word| ana_hash[word.downcase.chars.sort.join].push(word)} #sorts letter order in words to determine if it is an anagram, adds to its specific hash 
   ana_hash.each{|h,k| anagrams.push(k)} # for each value in ana_hash, pushes to the anagrams array
   
   return anagrams
  end
  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

