Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/query_params_url'=>'params_examples#query_params_method'
  get 'url_segment_params_url/:this_is_a_variable/:coffee'=>'params_examples#segment_params_method'
end
