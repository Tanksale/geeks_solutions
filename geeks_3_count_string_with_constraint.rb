# Count of strings that can be formed using a, b and c under given constraints
# Given a length n, count the number of strings of length n that can be made using ‘a’, ‘b’ and ‘c’ 
# with at-most one ‘b’ and two ‘c’s allowed.

# Examples :

# Input : n = 3 
# Output : 19 
# Below strings follow given constraints:
# aaa aab aac aba abc aca acb acc baa
# bac bca bcc caa cab cac cba cbc cca ccb 

# Input  : n = 4
# Output : 39

def count_string(n)
  permutations = ['a', 'b', 'c'].repeated_permutation(n).to_a
  permutations.delete_if {|permutation| (permutation.count("b") > 1 || permutation.count("c") > 2)}
  puts permutations.count
end

count_string(4)