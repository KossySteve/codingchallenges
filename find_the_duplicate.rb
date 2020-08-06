def duplicates(arr1, arr2)
    left_overs = []
    i = arr2.uniq.size
    k = 0
    i.times do
      counter = arr2.count(arr2[k]) - arr1.count(arr2[k])
      if counter > 0
        counter.times { left_overs << (arr2[k])}
      end
      p "#{counter}  #{arr2[k]}"
      arr1.delete(arr2[k])
      p arr1
      arr2.delete(arr2[k])
      p arr2
    end
    left_overs.sort
end

duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]
# [1, 2, 3, 4, 5].reject { |num| num.even? } #=> [1, 3, 5]
