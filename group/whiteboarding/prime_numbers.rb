def prime_numbers(amount)
  number = 1
  count = 1
  primes = []
  while count <= amount
    if is_prime_number(number)
      primes << number  
      count += 1    
    end
    number +=1
  end
  return primes
end 

def is_prime_number(number)
  divisible_by = 1
  count = 0
  number.times do 
    if number % divisible_by == 0
      count += 1
    end 
    divisible_by += 1
  end 
  if count <= 2
    return true
  end
  return false
end

puts prime_numbers(14)

