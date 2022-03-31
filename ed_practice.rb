arr = [5, 22, 29, 39, 19, 51, 78, 96, 84]
i = 0
while (i < arr.size - 1) # loop the number in arr and control the scope of index i
    if arr[i] < arr[i + 1] # if the number is in order
        i += 1  # just go to check the next number
    else   # if the number is not in order
        p i + 1 # print the next number which is not in order
        i += 1 # go to check the next number
    end
end

i = arr.size - 1
while (i <= arr.size - 1 && i > 0) # loop the number in arr from the greatest index and control the scope of index i
    if arr[i] < arr[i - 1] # if the number is not in order
        arr[i - 1], arr[i] = arr[i], arr[i - 1] # exchange the position
        i -= 1 # go to check the next number
    else # if the number is in order
        i -= 1 # just go to the next number
    end
end
p arr # output the new arr in order

