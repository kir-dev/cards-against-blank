Rails.application.routes.draw do
  resources :users
  resources :decks
  resources :black_cards
  resources :white_cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
