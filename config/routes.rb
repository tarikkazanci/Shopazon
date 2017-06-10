Rails.application.routes.draw do

get '/' => "welcome#home"

resources :stores do
  resources :products
  end

  resources :products
end
