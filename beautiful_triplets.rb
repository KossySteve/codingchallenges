public
def triplets
  #array = []
  count = 0
  i = 0
  while i < self.size - 2
    j = i + 1
    while j < self.size - 1
      k = j + 1
       while k <= self.size - 1
         count += 1 if (self[j] - self[i]) == (self[k] - self[j])
          #array << [self[i], self[j], self[k]]
         k += 1
      end
      j += 1
    end
    i += 1
  end
  count
end
print [1,2,3,4,7].triplets
