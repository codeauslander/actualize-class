require 'unirest'

SCREEN_SIZE = 90
system 'clear'
puts
puts '=' * SCREEN_SIZE
puts 'Weather Brought to You by the Best'.center(SCREEN_SIZE)
puts '=' * SCREEN_SIZE
puts 

print ' ' * (SCREEN_SIZE/3) + 'Enter a city:'
city = gets.chomp
print ' ' * (SCREEN_SIZE/3) + 'Enter a state:'
state = gets.chomp

puts
puts
puts ('-' * (SCREEN_SIZE - 10)).center(SCREEN_SIZE)


url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{city}%2C%20#{state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"

response = Unirest.get(url)
channel = response.body['query']['results']['channel']
temp_unit = channel['units']['temperature']

location_city = channel['location']['city']
location_state = channel['location']['region']

temperature = channel['item']['condition']['temp']
condition = channel['item']['condition']['text']

puts "Today in #{location_city}, #{location_state} it is #{temperature} #{temp_unit} and #{condition} outside".center(SCREEN_SIZE)
puts ('=' * (SCREEN_SIZE - 10)).center