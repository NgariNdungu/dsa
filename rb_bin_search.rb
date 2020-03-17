def bin_search(item, search_list)
  found = false
  return found if search_list.empty?

  while !found
    mid = search_list.length / 2
    if search_list[mid] == item
      found = true
    elsif search_list[mid] < item
      return bin_search(item, search_list[mid+1..-1])
    else
      return bin_search(item, search_list[0...mid])
    end
  end
  return found
end

testlist = [0, 1, 2, 8, 13, 17, 19, 32, 42]
$\ = "\n"
print(bin_search(3, testlist))
print(bin_search(13, testlist))
# print(bin_search_no_recurse(3, testlist))
# print(bin_search_no_recurse(13, testlist))
