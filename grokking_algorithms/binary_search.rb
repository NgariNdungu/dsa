def find_element(el, els)
  start = 0 
  stop = els.size - 1
  while start <= stop
    mid = (stop + start)/2
    return mid if els[mid] == el

    if els[mid] < el
      start = mid + 1
    else
      stop = mid - 1
    end
  end
end

# binary search requires that the elements be in sorted order
els = [1,2,3,7,8,4,6,7].sort
p find_element(10, els)
