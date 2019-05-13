Rails.application.routes.draw do
  devise_for :users
  resources :rooms
  resources :players
  resources :decks
  resources :black_cards
  resources :white_cards
  root 'white_cards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
