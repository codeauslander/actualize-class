puts "Hello, what are your favorite 5 foods?"
foods = []

5.times do
  answer = gets.chomp
  foods << answer
end

index = 0
x = 1
5.times do
  puts "#{x}. I love #{foods[index]}"
  index = index + 1
  x = x + 1
end

puts "----------------"

count = 0

11.times do
  p count
  count += 1
end

puts "-----------------"

cook = 10
languages = 5

class Person
  attr_reader :cook, :languages

  def initialize(cook,languages)
    @cook = cook
    @languages = languages
  end
end

sam = Person.new(10,1)
sally = Person.new(1,5)

if sam.cook == 10 && sally.languages == 5 # one = sign defines, two == signs rates equality. 
  p "MARRRY!"
end