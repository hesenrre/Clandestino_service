Rails.application.routes.draw do
  use_doorkeeper
  devise_for :chefs
  devise_for :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :meal_events, only: [:index, :show], as: :events do
        scope shallow_path: "meal_events" do
          post "add_chefs", on: :member
          post "add_chef/:id", to: "meal_events#add_chef", on: :member
          resources :meal_attendants, only: [:index, :show], shallow: true, as: :attendants do
            resources :addresses, only: [:index]
          end
          resources :chefs, only: [:index, :show], shallow: true
          resources :addresses, only: [:index, :show], shallow: true
        end
      end
    end
  end
end
