Rails.application.routes.draw do
 
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users' =>'users#index'
  resources :tweets
  resources :reports
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
  root 'tweets#new'
end
