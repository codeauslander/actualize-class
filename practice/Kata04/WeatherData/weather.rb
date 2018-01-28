
# Kata04: Data Munging
# Martin Fowler gave me a hard time for Kata02, complaining that it was yet another single-function, academic exercise. Which, or course, it was. So this week let’s mix things up a bit.

# Here’s an exercise in three parts to do with real world data. Try hard not to read ahead—do each part in turn.

# Part One: Weather Data
# In weather.dat you’ll find daily weather data for Morristown, NJ for June 2002. Download this text file, then write a program to output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column).




def conver_dat_to_array_hash(file)
  document = []
    while !file.eof? 
      line = file.readline.split(' ')
      document << line
    end 
  return document
end 

def get_temperatures_per_day(file)
  
  document = conver_dat_to_array_hash(file)
  document.delete_at(0)


  temperatures_per_day = []

  index_row = 0
  number_of_lines = document.length - 1
    number_of_lines.times do 
      if document[index_row].length > 0
        line = document[index_row]
        maximum = line[1].to_i
        minimum = line[2].to_i
        spread_temperature = maximum - minimum
        day_temperature = {"Day" =>line[0], "Maximum" => maximum, "Minimum" => minimum, "Spread_Temperature" =>spread_temperature}
        
        temperatures_per_day << day_temperature
      end
      
      index_row += 1
    end 
  return temperatures_per_day
end


def find_minimum_spread_temperature(temperatures_per_day)
  minimum_spread_temperature = temperatures_per_day[0]["Spread_Temperature"]

  
  temperatures_per_day.each do |day_temperature|
  
    spread_temperature = day_temperature["Spread_Temperature"]
    # puts "? #{minimum_spread_temperature} < #{spread_temperature}"
    if minimum_spread_temperature >  spread_temperature
      minimum_spread_temperature = spread_temperature
    end 

  end


  return minimum_spread_temperature

end 



temperatures_per_day = get_temperatures_per_day(file)
puts temperatures_per_day

minimum_spread_temperature = find_minimum_spread_temperature(temperatures_per_day)

puts "The minimum spread temperature is #{minimum_spread_temperature}"












