# Enter your procedural solution here!
def largest_prime_factor(n)
    fact = n - 1
    while fact > 0
        if n % fact == 0
            puts fact
            prime = true
            fact_of_fact = fact - 1
            while fact_of_fact > 1
                if fact % fact_of_fact == 0
                    prime = false
                end
                fact_of_fact -= 1
            end
            if prime == true
                return fact
            end
        end
        fact -= 1
    end
end

def optimized_largest_prime_factor(n)
    fact = n - 1
    while fact > 0
        if n % fact == 0
            prime = true
            fact_of_fact = fact - 1
            while fact_of_fact > 1
                if fact % fact_of_fact == 0
                    prime = false
                end
                fact_of_fact -= 1
            end
            if prime == true
                return fact
            end
        end
        fact -= 1
    end
end

puts largest_prime_factor(13195)
puts largest_prime_factor(1000000)
puts largest_prime_factor(600851475143)
# puts optimized_largest_prime_factor(600851475143)


