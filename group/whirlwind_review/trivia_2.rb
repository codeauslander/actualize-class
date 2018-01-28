# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer
  def initialize(attributes)
    @question = attributes['question']
    @answer = attributes['answer']
  end
  def correct_answer?(answer)
    answer == @answer ? true : false
  end 
end

class Deck
  attr_reader :trivia_data
  def initialize(attributes)
    @trivia_data = attributes
  end
  def draw_card
    card = Card.new(@trivia_data.shift)
    return card
  end
  def remaining_cards
    @trivia_data.length
  end
end

trivia_data = [
  {'question'=>'What is the capital of Illinois?','answer'=>'Springfield'},
  {'question'=>'Is Africa a country or a continent?','answer'=>'Continent'},
  {'question'=>'Tug of war was once an Olympic event. True or false?','answer'=>'true'},
  {'question'=>'Ciaran McGoldrick is superman? a.yes b.no c.almost d.of corse','answer'=>'d'}
]

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if card.correct_answer?(user_answer) 
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end