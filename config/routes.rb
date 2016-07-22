Rails.application.routes.draw do
  use_doorkeeper
  devise_for :chefs
  devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
