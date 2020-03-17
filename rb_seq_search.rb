def seq_search(item, list)
  for term in list
    return true if term == item
  end
  return false
end

def seq_search_ordered(item, list)
  list.sort!
  found = false
  for term in list
    return true if term == item

    break if term > item
  end
  found
end

$\ = "\n"
print(seq_search(6, [2, 3, 4, 5]))
print(seq_search_ordered(6, [2, 6, 9, 1, 3, 4, 5]))
