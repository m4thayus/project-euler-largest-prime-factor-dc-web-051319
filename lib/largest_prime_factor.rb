# Enter your procedural solution here!
def largest_prime_factor(n)
    fact = n - 1
    while fact > 1
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
    fact = Math.sqrt(n).to_i
    while fact > 1
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

puts "Largest: #{largest_prime_factor(13195)}"
puts "Largest: #{largest_prime_factor(20000000)}"
# puts largest_prime_factor(600851475143)
puts "Start Optimized Runs"
puts "Largest: #{optimized_largest_prime_factor(13195)}"
puts "Largest: #{optimized_largest_prime_factor(20000000)}"
puts "Largest: #{optimized_largest_prime_factor(600851475143)}"