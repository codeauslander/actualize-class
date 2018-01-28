Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/feature_1'=>'features#feature_1_method'
  get '/feature_2'=>'features#feature_2_method'
  get '/feature_3'=>'features#feature_3_method'
  get '/bonus_1'=>'features#bonus_1_method'
end
