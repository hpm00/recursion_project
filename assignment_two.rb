def merge_sort(arr)
  return arr if arr.length < 2

  # create left and right half of array
  left,right = arr.each_slice((arr.length / 2.0).round).to_a
  # Recurusively call method to create even smaller halves
  left = merge_sort(left)
  right = merge_sort(right)

  sorted = []
  # compare first elements in both side and add 'lower' first element to sorted
  # 'lower' first element is then deleted from corresponding array
  while left != [] && right != [] do
    if left[0] < right[0]
      sorted << left[0]
      left.delete_at(0)
    else
      sorted << right[0]
      right.delete_at(0)
    end
  end 
  # what to do when one array is empty but not the other 
  while left != [] do
    sorted << left[0]
    left.delete_at(0)
  end
  
  while right != [] do
    sorted << right[0]
    right.delete_at(0)
  end

  sorted
end