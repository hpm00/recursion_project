def merge_sort(arr)
  return arr if arr.length < 2

  left,right = arr.each_slice((arr.length / 2.0).round).to_a
  left = merge_sort(left)
  right = merge_sort(right)
  
  sorted = []
 
  while !left.empty? && !right.empty? do
    if left.min() < right.min()
      sorted << left.min()
      left.delete_at(left.index(left.min()))
    else
      sorted << right.min()
      right.delete_at(right.index(right.min()))
    end
  end 
   
  while !left.empty? do
    sorted << left.min()
    left.delete_at(left.index(left.min()))
  end
  
  while !right.empty? do
    sorted << right.min()
    right.delete_at(right.index(right.min()))
  end
  sorted
end