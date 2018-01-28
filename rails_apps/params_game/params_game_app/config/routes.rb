Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/guest_name_url'=>'games#guest_name_method'
  get '/guess_number_url'=>'games#guess_number_method'
  # get '/guess_name_number_url/:name/:number'=>'games#guess_name_number_method'
  get '/guess_name_number_url'=>'games#guess_name_number_method'

end
