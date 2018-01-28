def randomly_sorted_numbers(size)
  index = 0
  numbers = [0]
  while index < size
    number = rand(1..100)
    last_number = numbers[index]
    if number > last_number
      numbers << number
       index += 1
    end 
  end 
  numbers.shift
  return numbers
end

def reverse_array(randomly_sorted_numbers)
  array = []
  index = randomly_sorted_numbers.length - 1
  randomly_sorted_numbers.length.times do 
    array << randomly_sorted_numbers[index]
    index -= 1
  end
  return array  
end

p reverse_array(randomly_sorted_numbers(5))
