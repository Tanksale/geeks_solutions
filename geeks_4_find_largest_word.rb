# Find largest word in dictionary by deleting some characters of given string
# Giving a dictionary and a string ‘str’, find the longest string in dictionary which can be formed by deleting some characters of the given ‘str’.

# Examples:

# Input : dict = {"1": "ale", "2": "apple", "3": "monkey", "4": "plea"}
#         str = "abpcplea" 
# Output : apple 

# Input  : dict = {"pintu", "geeksfor", "geeksgeeks", 
#                                         " forgeek"} 
#          str = "geeksforgeeks"
# Output : geeksgeeks

def find_largest_word(dict, str)
  string_split = str.split("")
  dict.values.sort_by(&:length).reverse.each do |word|
    word_split = word.split("")
    if word_split.uniq.all? {|character| string_split.count(character) >= word_split.count(character) }
      puts word
      break
    end
  end
end


find_largest_word({"1": "ale", "2": "apple", "3": "monkey", "4": "plea"}, "abpcplea")
find_largest_word({"1": "pintu", "2": "geeksfor", "3": "geeksgeeks", "4": " forgeek"}, "geeksforgeeks")
