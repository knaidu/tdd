# Problem: Given an array of integers that are sorted in ascending order and then rotated.
#          Find the key in the most efficient manner
#
# Input: Array - 5 6 0 1 2 3 4, Key -

# Input: Array - 5 6 7 8 2 3 4, Key

# Solution:
# 1. Modify the standard binary search algorithm,
# 2. Prune the search space by half each time, making sure you are moving in the direction of the result
# 3. Have a terminal condition to ensure the algorithm terminates when it doesn't find the actual solution
#    or when it does find the correct solution

def search(array, key)
  # validate array exists
  # validate key exists

  raise ArgumentError, 'Please provide valid input array to be searched.' if array.nil?
  raise ArgumentError, 'Please provide valid search key' if key.nil?

  search_recursive(array, key, 0, array.size)
end

def search_recursive(array, key, low, high)
  return false if low > high

  mid = (low + high) / 2
  if array[low] < key

  end
end