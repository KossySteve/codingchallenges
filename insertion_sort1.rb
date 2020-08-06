def insertion_sort(array)
i = 1
last = array[-1]
  while i < array.size
    if last < array[-i-1]
      array[-i-1], array[-i] = array[-i-1], array[-i-1]
      puts array.join(" ")
    else
      array[-i-1], array[-i] = array[-i-1], last
      break
    end
    i += 1
  end
  array[0] = last if last < array[0]
  puts array.join(" ")
end
insertion_sort([1, 4, 6, 9, 3])
