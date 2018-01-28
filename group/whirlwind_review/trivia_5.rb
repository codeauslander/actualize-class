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
    answer.downcase == @answer.downcase ? true : false
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

class Game

  def initialize(trivia_data)

    deck = Deck.new(trivia_data)

    incorrect = []
    incorrect =play(deck, incorrect)

    while incorrect.length > 0 


      puts "Let's try again. You stil have #{incorrect.length} incorrect answers"

      trivia_data = []
      incorrect.each do |card|
        trivia_data << {'question'=>card.question,'answer'=>card.answer}
      end 
      deck = Deck.new(trivia_data)

      incorrect =play(deck, incorrect)
    end 

  end 

  def play(deck, incorrect)
    correct = []
    
    while deck.remaining_cards > 0
      card = deck.draw_card # card is an instance of the Card class
      puts card.question
      user_answer = gets.chomp
      if card.correct_answer?(user_answer) 
        puts "Correct!"
        correct << card
      else
        puts "Incorrect!"
        incorrect << card
        puts 'Try again'
        user_answer = gets.chomp
        if card.correct_answer?(user_answer) 
          puts "Correct!"
          incorrect.shift
          correct << card
        else
          puts 'Incorrect.'
          puts 'next question'
        end 
      end
    end

    score = (correct.length / incorrect.length.to_f) * 10

    puts "You have #{correct.length} correct answers and #{incorrect.length} incorrect answers. Your score from 0 to 10 being 10 the higher and 0 the lowest is #{score}"

    return incorrect
  end 
end 

trivia_data = [
  {'question'=>'What is the capital of Illinois?','answer'=>'Springfield'},
  {'question'=>'Is Africa a country or a continent?','answer'=>'Continent'},
  {'question'=>'Tug of war was once an Olympic event. True or false?','answer'=>'true'},
  {'question'=>'Ciaran McGoldrick is superman? a.yes b.no c.almost d.of corse','answer'=>'d'}
]

Game.new(trivia_data)

# deck = Deck.new(trivia_data) # deck is an instance of the Deck class

# p deck

# correct = []
# incorrect = []
# while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if card.correct_answer?(user_answer) 
#     puts "Correct!"
#     correct << card
#   else
#     puts "Incorrect!"
#     incorrect << card
#     puts 'Try again'
#     user_answer = gets.chomp
#     if card.correct_answer?(user_answer) 
#       puts "Correct!"
#       incorrect.shift
#       correct << card
#     else
#       puts 'Incorrect.'
#       puts 'next question'
#     end 
#   end
# end

# score = (correct.length / incorrect.length.to_f) * 10

# puts "You have #{correct.length} correct answers and #{incorrect.length} incorrect answers. Your score from 0 to 10 being 10 the higher and 0 the lowest is #{score}"

# trivia_data = []

# incorrect.each do |card|
#   trivia_data << {'question'=>card.question,'answer'=>card.answer}
# end 

# deck = Deck.new(trivia_data)


# p deck

# if deck.remaining_cards > 0

# puts "Let's try again these #{incorrect.length} questions"
# correct_next_round = []

#   while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if card.correct_answer?(user_answer) 
#     puts "Correct!"
#     correct << card
#   else
#     puts "Incorrect!"
#     incorrect << card
#     puts 'Try again'
#     user_answer = gets.chomp
#     if card.correct_answer?(user_answer) 
#       puts "Correct!"
#       incorrect.shift
#       correct << card
#     else
#       puts 'Incorrect.'
#       puts 'next question'
#     end 
#   end
# end

#   score = (correct.length / incorrect.length.to_f) * 10

#   puts "You have #{correct.length} correct answers and #{incorrect.length} incorrect answers. Your score from 0 to 10 being 10 the higher and 0 the lowest is #{score}"

# end 






