def bin_search(item, search_list):
    """function implements binary search"""
    found = False
    if len(search_list) == 0:
        return found
    search_list.sort()
    while not found:
        mid = len(search_list) // 2
        if search_list[mid] == item:
            found = True
        elif search_list[mid] < item:
            # if middle item is less than search term, search upper half
            return bin_search(item, search_list[mid+1:])
        else:
            return bin_search(item, search_list[:mid])
    return found

def bin_search_no_recurse(item, search_list):
    """docstring for bin_search_no_recurse"""
    first = 0
    last = len(search_list) - 1
    found = False
    while first <= last and not found:
        mid = (first + last)//2
        if search_list[mid] == item:
            found = True
        elif search_list[mid] < item:
            first = mid + 1
        else:
            last = mid - 1
    return found

testlist = [0, 1, 2, 8, 13, 17, 19, 32, 42,]   
print(bin_search(3, testlist))
print(bin_search(13, testlist))
print(bin_search_no_recurse(3, testlist))
print(bin_search_no_recurse(13, testlist))
