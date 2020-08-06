def merge_sort(array1, array2)
  array = array1 + array2
  unsorted = true
    while unsorted
      unsorted = false
     (array.size - 1).times do
       |i|
        if array[i] > array[i+1]
         array[i],array[i+1] = array[i+1], array[i]
         unsorted = true
        end
     end
    end
    array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
