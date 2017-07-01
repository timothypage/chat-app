Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'rooms#index'

  get '/sign-in', to: 'sessions#new'
  post '/sign-in', to: 'sessions#create'
  delete '/sign-out', to: 'sessions#destroy'
end
