# Implement your object-oriented solution here!
class EvenFibonacci
    
    attr_reader :limit

    def initialize(limit)
        @limit = limit
    end
    
    def sum 
        if self.limit == 2 
            return limit 
        end 
        array = [1, 2]
        counter = 1
        while array[counter] + array[counter - 1] < self.limit
            array.push(array[counter] + array[counter - 1])
            counter += 1
        end
        evens = array.filter do |number|
            number % 2 == 0 
        end
        evens.reduce(:+)
    end 
end   