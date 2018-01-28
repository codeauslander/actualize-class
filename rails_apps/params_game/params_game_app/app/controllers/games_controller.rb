class GamesController < ApplicationController
  def guest_name_method
    name = params[:name].upcase
    message_name = name[0] == 'A' ?  "Hey, your name starts with the first letter of the alphabet!" + " " + name : name
    render json:{
      name:name,
      message_name: message_name
    }
  end
  def guess_number_method
    number = params[:number].to_i

    correct = 23
    # correct = rand(1..100)
    hint = number < correct ? 'Please higher' : 'Please lower'
    text = number == correct ? 'You win' : hint

    render json:{
      text: text,
      correct: correct
    }
  end
  def guess_name_number_method
    name = params[:name].upcase
    number = params[:number].to_i
    correct = 23

    message_name = name[0] == 'A' ?  "Hey, your name starts with the first letter of the alphabet!" + " " + name : name
    
    hint = number < correct ? 'Please higher' : 'Please lower'
    text = number == correct ? 'You win' : hint

    render json:{
      text: text,
      correct: correct,
      name:name,
      message_name: message_name,
    
    }
  end 
end
