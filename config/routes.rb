Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :posts
  #get 'home/index'
  #get 'home/build'
  #get 'home/buy'
  #get 'home/invest'
  get 'home/framework'
  get 'home/service'
  get 'home/pricing'
  get 'home/forum'
  get 'home/about'
  get 'home/contact'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
