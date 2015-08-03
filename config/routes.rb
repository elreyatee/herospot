Rails.application.routes.draw do
 get 'ui(/:action)', controller: 'ui'
 root 'heros#index'
 get 'join', to: 'users#new'
 post 'join', to: 'users#create'
 get 'login', to: 'sessions#new'
 post 'login', to: 'sessions#create'
 get 'logout', to: 'sessions#destroy'

 resources 'heros', only: [:show] do 
  collection do  
    get 'search', to: 'heros#search'
  end

  member do
    get 'follow', to: 'heros#follow'
    get 'unfollow', to: 'heros#unfollow'
  end
 end

 resources 'users', only: [:favs] do 
  member do 
    get 'favs', to: 'users#favs'
  end
 end
end
