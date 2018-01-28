class PagesController < ApplicationController
  def url_1_method
    render json:{message:'This is the url_1'}
  end 
  def url_2_method
    render json:{message:'This is the url_2'}
  end 
  def url_3_method
    render json:{message:'This is the url_3'}
  end 
end
