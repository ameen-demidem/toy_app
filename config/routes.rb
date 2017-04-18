Rails.application.routes.draw do
  get '/home', controller: :static_pages, action: :home
  get '/help', controller: :static_pages, action: :help

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
