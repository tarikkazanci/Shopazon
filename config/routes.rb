Rails.application.routes.draw do

  get '/' => "welcome#home"
  get '/history' => "welcome#history"

  devise_for :users

  resources :stores do
  resources :products
  end

  resources :products
end
