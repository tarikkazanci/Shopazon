Rails.application.routes.draw do

get '/' => "welcome#home"
get '/history' => "welcome#history"

resources :stores do
  resources :products
  end

  resources :products
end
