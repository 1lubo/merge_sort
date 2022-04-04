def merge(left, right, new_a = []) # method for comparing merging two arrays

    (left.size + right.size).times do
        if left.empty?
            new_a << right.shift        

        elsif right.empty?
            new_a << left.shift
        else
            compare = left <=> right
            if compare == -1
                new_a << left.shift
            elsif compare == 1
                new_a << right.shift
            else
                new_a << left.shift
            end
        end
    end

    new_a

end


def merge_sort(array)
    
    if array.length <= 1
        return array # an array with one element or less is already sorted by definition
    else 

        left_array = []
        right_array = []

        array.each_with_index do |num, ind| # split arrays with two elements or more into two arrays of same size

            if ind < array.length / 2
                left_array.push(num)
            else
                right_array.push(num)
            end

        end

        merge(merge_sort(left_array), merge_sort(right_array)) # merge newly created arrays
    end    
    
end


ar = []
rand(200).times do
    ar << rand(200)
end

puts (merge_sort(ar))