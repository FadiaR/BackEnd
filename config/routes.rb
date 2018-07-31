Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/new', to: 'users#new', as: 'user_new'
  post 'users/new', to: 'users#create'
  get 'users/error', to: 'users#error'
end
