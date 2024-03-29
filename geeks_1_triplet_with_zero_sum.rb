# Find all triplets with zero sum
# Given an array of distinct elements. The task is to find triplets in array whose sum is zero.
# Examples :

# Input : arr[] = {0, -1, 2, -3, 1}
# Output : 0 -1 1
#          2 -3 1

# Input : arr[] = {1, -2, 1, 0, 5}
# Output : 1 -2  1

elements = eval(ARGV[0])

class TripletWithZeroSum
  def self.ruby_way_1(elements)
    elements.combination(3).to_a.each do |triplet|
      sum = triplet[0] + triplet[1] + triplet[2]
      puts triplet.inspect if sum.eql?(0)
    end
  end

  # Another solution for the above problem

  def self.way_2(elements)
    element_size = elements.length
    (0).upto(element_size-3) do |i|
      (i+1).upto(element_size-2) do |j|
        (j+1).upto(element_size-1) do |k|
	  x = elements[i] + elements[j] + elements[k]
	  if x == 0
	    p [elements[i],elements[j],elements[k]]
	    found = true
	  end
	end
      end
    end
  end
end

# Commands to run this file
# ruby geeks_1_triplet_with_zero_sum.rb "[0, -1, 2, -3, 1]"

TripletWithZeroSum.way_2(elements)
