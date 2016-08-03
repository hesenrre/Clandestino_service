Rails.application.routes.draw do
  use_doorkeeper
  devise_for :chefs
  devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # Clients namespace at global route
      resources :clients, only: [:index, :show] do
        collection do
          get 'me'
          get 'me/delivery_addresses'
          post 'me/delivery_addresses', to: 'delivery_addresses#create'
          get 'me/invitations'
          post 'me/invitations', to: 'invitations#create'
          get 'me/phones'
          post 'me/phones', to: 'phones#create'
          get 'me/interests'
          post 'me/interests', to: 'interests#create'
          get 'me/food_preferences'
          post 'me/food_preferences', to: 'food_preferences#create'
          # get 'me/commands' # TO IMPLEMENT
          # post 'me/commands', to: 'commands#create' # TO IMPLEMENT
        end
        resources :delivery_addresses, shallow: true
        resources :invitations, shallow: true
        resources :phones, shallow: true
        resources :interests, shallow: true
        resources :food_preferences, shallow: true
        # resources :commands, shallow: true # TO IMPLEMENT
      end

      # Chef namespace at global route
      resources :chefs, only: [:index, :show] do
        collection do
          get 'me'
          get 'me/calls'
          post 'me/calls', to: 'calls#create'
          get 'me/phones'
          post 'me/phones', to: 'phones#create'
        end

        resources :calls, shallow: true
        resources :phones, shallow: true
      end
      resources :addresses, except: [:index, :create, :new]
    end
  end
end
