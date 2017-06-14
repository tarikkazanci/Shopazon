Rails.application.routes.draw do

  get '/' => "welcome#home"
  get '/history' => "welcome#history"
  
  get '/user' => "users#show"

  devise_for :users

  resources :products
  resources :orders

  resources :stores do
    resources :products
  end

end
