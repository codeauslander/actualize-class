Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/url_1'=>'pages#url_1_method'
  get '/url_2'=>'pages#url_2_method'
  get '/url_3'=>'pages#url_3_method'
end
