class PagesController < ApplicationController
  def hello_method
    #build json
    sum = 1+1
    # time="9:45am"
    time=Time.now.strftime("%I:%M %p")
    puts "somethig not to render but to put in the terminal"
    render json:{message:"hello",sum:sum,time:time}
  end
  def goodbye_method
    render json:{thingy:'goodbye'}
  end
end
