def stock_picker (array, new_array = Array.new)
    
    if array[0] == array.max
        array.delete_at(0)
    elsif array[-1] == array.min
        array.delete_at(-1)
    end

    if array.index(array.min) > array.index(array.max)
        array.delete(array.min)
    end

    buy = array.min
    sell = array.max

    p buy
    p sell

end

stock_picker([17,3,6,9,15,8,6,1,10])