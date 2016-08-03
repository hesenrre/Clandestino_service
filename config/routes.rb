Rails.application.routes.draw do
  use_doorkeeper
  devise_for :chefs
  devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      resources :me, only: :index do
        collection do
          get 'delivery_addresses'
          post 'delivery_addresses', to: 'delivery_addresses#create'
          get 'invitations'
          post 'invitations', to: 'invitations#create'
          get 'phones'
          post 'phones', to: 'phones#create'
          get 'interests'
          post 'interests', to: 'interests#create'
          get 'food_preferences'
          post 'food_preferences', to: 'food_preferences#create'
          get 'calls'
          post 'calls', to: 'calls#create'
          # get 'me/commands' # TO IMPLEMENT
          # post 'me/commands', to: 'commands#create' # TO IMPLEMENT
        end
      end

      # Clients namespace at global route
      resources :clients, only: [:index, :show] do
        resources :delivery_addresses, shallow: true
        resources :invitations, shallow: true
        resources :phones, shallow: true
        resources :interests, shallow: true
        resources :food_preferences, shallow: true
        # resources :commands, shallow: true # TO IMPLEMENT
      end

      # Chef namespace at global route
      resources :chefs, only: [:index, :show] do

        resources :calls, shallow: true
        resources :phones, shallow: true
      end
      resources :addresses, except: [:index, :create, :new]
    end
  end
end
