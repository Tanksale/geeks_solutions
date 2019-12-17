# Find subarray with given sum | Set 1 (Nonnegative Numbers)
# Given an unsorted array of nonnegative integers, find a continuous subarray which adds to a given number.
# Examples :

# Input: arr[] = {1, 4, 20, 3, 10, 5}, sum = 33
# Ouptut: Sum found between indexes 2 and 4

# Input: arr[] = {1, 4, 0, 0, 3, 10, 5}, sum = 7
# Ouptut: Sum found between indexes 1 and 4

# Input: arr[] = {1, 4}, sum = 0
# Output: No subarray found


def sub_array_sum(arr,sum)
	length = arr.length
	found = false
	start_index = 0 
	end_index = 0

	(length-1).times do |outer_index|
	  arr_sum = arr[outer_index]
	  ((outer_index+1)...length).each do |inner_index|
	    arr_sum += arr[inner_index]
	    if sum == arr_sum
	      found = true
	      start_index = outer_index
	      end_index = inner_index 
	      break
	    end
	    break if arr_sum > sum
	  end
	end

	if found == true
	  p "Sum found between indexes  #{start_index} and #{end_index}" 
	else
	  p "No subarray found"
	end
end


arr = [1, 4, 20, 3, 10, 5]
sum = 33
sub_array_sum(arr, sum)