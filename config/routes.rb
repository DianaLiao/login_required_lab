Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/secrets', to: 'secrets#show', as: 'secrets'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to:'sessions#welcome', as: 'welcome'
  post '/logout', to: 'sessions#destroy', as: 'logout'

end
