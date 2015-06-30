Rails.application.routes.draw do

  get '/scores' => 'scores#index'

  post '/scores' => 'scores#create'

end
