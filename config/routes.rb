Rails.application.routes.draw do
 get 'ui(/:action)', controller: 'ui'
 # get 'login', to: 'sessions#new'
 # get 'login', to: 'sessions#create'
 # get 'logout', to: 'sessions#destroy'
 # get 'join', to: 'users#new'
end
