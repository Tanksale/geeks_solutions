# Generate all binary strings from given pattern
# Given a string containing of ‘0’, ‘1’ and ‘?’ wildcard characters, generate all binary strings that can be formed by replacing each wildcard character by ‘0’ or ‘1’.
# Example :

# Input str = "1??0?101"
# Output: 
#         10000101
#         10001101
#         10100101
#         10101101
#         11000101
#         11001101
#         11100101
#         11101101

def binary_strings
  str = "1??0?101"
  arr = []
  combination = []
  arr.push(str)
  while arr.length >= 1
    element = arr.pop
    if element.include?("?")
      arr.push(element.sub('?', '0'))
      arr.push(element.sub('?', '1'))
    else
      combination.push(element)
    end
  end
  puts combination
end

binary_strings