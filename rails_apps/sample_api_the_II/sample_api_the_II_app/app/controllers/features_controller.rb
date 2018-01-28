class FeaturesController < ApplicationController
  
  def feature_1_method
    #build json

    number = rand(3)
    fortunes = ["good luck","bad luck","normal"]
    render json:{fortune:fortunes[number]}
  end
  def feature_2_method
    lotto = []
    6.times do |index|
      lotto << rand(60)
    end
    render json:{lotto:lotto}
  end

  def feature_3_method
    @visits = 0
    @visits = @visits + 1
    render json:{visits:@visits}
  end

  def bonus_1_method
    lyrics = get_lyrics_bottles
    render json:{lyrics:lyrics}
  end

  def get_lyrics_bottles
    number = 99
    lyrics = ''
    jump = "\n"
    lyrics += jump + "Lyrics of the song #{number} Bottles of Beer"

    98.times do
      lyrics += jump + ""
      lyrics += jump + "#{number} bottles of beer on the wall, #{number} bottles of beer."
      number = number - 1
      lyrics += jump + "Take one down and pass it around, #{number} bottles of beer on the wall."
      
    end

    lyrics += jump + ""
    lyrics += jump + "#{number} bottle of beer on the wall, #{number} bottle of beer."
    lyrics += jump + "Take one down and pass it around, no more bottles of beer on the wall."

    number = 99

    lyrics += jump + ""
    lyrics += jump + "No more bottles of beer on the wall, no more bottles of beer. "
    lyrics += jump + "Go to the store and buy some more,  #{number} bottles of beer on the wall."

    return lyrics
  end 
end
