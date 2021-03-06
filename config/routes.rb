Rails.application.routes.draw do
  devise_for :users
  resources :chats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [:new, :create, :show, :index]

  root 'chat_rooms#index'

end
