def binary_search(arr, target):
  low = 0
  high = len(arr) - 1
  mid = 0

  while low <= high:
    mid = (high + low) // 2
    # If x is greater, ignore left half
    if arr[mid] < target:
      low = mid + 1
    # If x is smaller, ignore right half
    elif arr[mid] > target:
      high = mid - 1
    # means x is present at mid
    else:
      return mid
  # If we reach here, then the element was not present
  return -1

# Test array
arr = [ 2, 3, 4, 10, 40 ]
target = 10

# Function call
result = binary_search(arr, target)

if result != -1:
  print("Element is present at index", str(result))
else:
  print("Element is not present in array")
