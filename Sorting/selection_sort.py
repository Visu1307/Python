def selection_sort(arr):
  # Iterate over the array
  for i in range(len(arr)):
    # Find the minimum element in the unsorted portion of the array
    min_index = i
    for j in range(i + 1, len(arr)):
      if arr[j] < arr[min_index]:
        min_index = j

    # Swap the minimum element with the current element
    arr[i], arr[min_index] = arr[min_index], arr[i]

  # Return the sorted array
  return arr


# Test the selection sort function
arr = [5, 3, 2, 1, 4]
print(selection_sort(arr))
