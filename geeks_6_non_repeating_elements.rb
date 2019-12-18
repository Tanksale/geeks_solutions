# Find the two non-repeating elements in an array of repeating elements
# Asked by SG
# Given an array in which all numbers except two are repeated once. (i.e. we have 2n+2 numbers and n numbers are occurring twice and remaining two have occurred once). Find those two numbers in the most efficient way.

# Let us see an example.
#    arr[] = {2, 4, 7, 9, 2, 4}
# elements 7 and 9. Please see the implementation for this step.

def non_repeating_element(arr)
  non_repeating = []
  arr.uniq.each do |element|
    non_repeating << element if arr.count(element).eql?(1)
    break if non_repeating.length.eql?(2)
  end
  puts "#{non_repeating.join(' & ')} are non_repeating elements in Given array" 
end

arr = [2, 4, 7, 9, 2, 4, 7, 10, 9, 1]
non_repeating_element(arr)
