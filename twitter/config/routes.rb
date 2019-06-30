Rails.application.routes.draw do
  get 'logins/new'
  get 'logins/create'
  get 'logins/destroy'
  resources :friendships
  resources :statuses
  resources :users
  resources :logins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "logins#new"
end
