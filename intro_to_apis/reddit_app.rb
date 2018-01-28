require 'unirest'

looking_up_words= true

while looking_up_words 

  url = "https://www.reddit.com/r/programming/.json"

  response = Unirest.get(url).body
  posts = response['data']['children']

  print "Please enter the post number from 0 to #{posts.length}: "
  number = gets.chomp.to_i
  puts

  permalinks = []
  posts.each do  |post|
    permalinks << post['data']['permalink']
  end

  url_comments = "https://www.reddit.com" + permalinks[number] + ".json"

  puts "Here are the comments for the post"
  puts url_comments

  comments = Unirest.get(url_comments).body
  comments = comments[1]['data']['children']

  index = 1
  comments.each do |comment|
    puts "-" * 50
    puts "#{index}). #{comment['data']['body']}"
    index += 1
  end 

  puts 
  puts "Press enter to keep going or enter q to Quit"
  command = gets.chomp
  system 'clear'
  if command == 'q'
    looking_up_words = false
  end 

end