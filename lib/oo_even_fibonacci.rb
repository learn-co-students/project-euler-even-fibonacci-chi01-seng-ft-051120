class EvenFibonacci

    def initialize(n)
        @n = n
    end

    def sum
        nums = [1, 2]
        i = 2
        while nums[-2..-1].sum <= @n
            i += nums[-2]
            nums.append(i)
        end
        nums.select { |num| num % 2 === 0}.sum
    end

end