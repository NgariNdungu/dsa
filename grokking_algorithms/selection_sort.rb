def find_max(list)
  idx = 0
  max = list[idx]
  list.each_with_index do |item, i|
    if item > max
      max = item
      idx = i
    end
  end
  [max, idx]
end

def selection_sort(list)
  sorted = []
  mutable = [*list]
  list.each do
    max, idx = find_max(mutable)
    sorted << max
    mutable.delete_at idx
  end
  sorted
end

test_array = [5,7,3,6,9,2]
p selection_sort(test_array)
