def bubble_sort(array)
    n = array.length

    if n < 1
        return []
    elsif n == 1
        return array
    end

    loop do
        swapped = false

        (n - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
                swapped = true
            end
        end
        break if not swapped
    end

    p array
end

bubble_sort([4,3,78,2,0,2])