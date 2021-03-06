# Question: https://www.geeksforgeeks.org/jump-search/

def jump_search(arr, x)
  len = arr.length
  step = Math.sqrt(len)

  prev = 0

  while arr[[step,len].min] < x do
    prev = step

    step += Math.sqrt(len)

    return -1 if prev >= len
  end

  while arr[prev] < x do
    prev += 1

    return -1 if prev == [step, len].min
  end

  if arr[prev] == x
    return prev.to_i
  end

  return -1
end

# Test 1
arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x = 50 # output: -1

# # Test 2
# arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
# x = 21 # output: 8

# # Test 3
# arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
# x = 50

result = jump_search(arr, x)

puts result < 0 ? "Number '#{x}' is not present in array" : "Number '#{x}' is at index #{result}"