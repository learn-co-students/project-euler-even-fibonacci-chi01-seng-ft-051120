# Implement your procedural solution here!
def even_fibonacci_sum(n)
    nums = [1, 2]
    i = 2
    while nums[-2..-1].sum <= n
        i += nums[-2]
        nums.append(i)
    end
    nums.select { |num| num <= n && num % 2 === 0}.sum
end
