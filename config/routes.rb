Rails.application.routes.draw do
 get 'ui(/:action)', controller: 'ui'
 root 'heroes#index'
 get 'join', to: 'users#new'
 post 'join', to: 'users#create'
 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 get 'logout', to: 'sessions#destroy'
end
