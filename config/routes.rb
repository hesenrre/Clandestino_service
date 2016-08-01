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
          get 'me/events'
          post 'me/events', to: 'events#create'
          get 'me/commands'
          post 'me/commands', to: 'commands#create'
        end
        resources :delivery_addresses, shallow: true
        resources :invitations, shallow: true
        resources :phones, shallow: true
        resources :interests, shallow: true
        resources :food_preferences, shallow: true
        resources :events, shallow: true
        resources :commands, shallow: true
      end


      # Chefs at global route
      resources :chefs, only: [:index, :show]

      resources :meal_events, only: [:index, :show], as: :events do
        scope shallow_path: "meal_events" do
          post "add_chefs", on: :member
          post "add_chef/:id", to: "meal_events#add_chef", on: :member
          resources :invitations, only: [:index, :show], shallow: true, as: :attendants do
            resources :addresses, only: [:index]
          end
          resources :chefs, only: [:index, :show], shallow: true
          resources :addresses, only: [:index, :show], shallow: true
        end
      end
    end
  end
end
