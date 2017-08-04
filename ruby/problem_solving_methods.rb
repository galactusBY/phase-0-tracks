#Have array as initial data set to be searched
#A search method that takes (ary, integer within ary)
#Returns the index of second arg (aka the index# of the array)
#Utilize .each & .length

arr = [1, 2, 3, 4]

def search_array(arr, integer)
    i = 0
    while i < arr.length
        if i == integer
            p arr[i]
            i += 1
        end
    end
end
