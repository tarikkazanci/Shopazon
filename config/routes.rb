Rails.application.routes.draw do

get '/' => "stores#home"

resources :stores do
  resources :products
  end
end
