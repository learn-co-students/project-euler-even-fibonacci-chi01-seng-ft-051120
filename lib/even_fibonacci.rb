# Implement your procedural solution here!
def even_fibonacci_sum(limit)
    if limit == 2 
        return 2 
    end
    array = [1, 2]
    counter = 1
    while array[counter] + array[counter - 1] < limit
        array.push(array[counter] + array[counter - 1])
        counter += 1
    end
    evens = array.filter do |number|
        number % 2 == 0 
    end
    evens.reduce(:+)  
end
