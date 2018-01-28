require 'unirest'

print "Give me your name: "
user_name = gets.chomp

system 'clear'
solved = false

while !solved
  print "Give me a number between 1 and 100: "
  user_number = gets.chomp

  response = Unirest.get("http://localhost:3000/guess_name_number_url",
      params{
        user_name:user_name,
        user_number:user_number
      }

    ).body
 
  
  # response = Unirest.get("http://localhost:3000/guess_name_number_url/#{user_name}/#{user_number}").body

  if response["text"] == 'You win'
    solved = true
    puts "Winner"
  end 

  puts response["text"]
  puts "Keep going baby"
  puts "-" * 50
  
end


puts JSON.pretty_generate(response)