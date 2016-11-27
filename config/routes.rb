Rails.application.routes.draw do
  devise_for :users

  resources :chat_rooms, only: [:new, :create, :show, :index]

  mount ActionCable.server => '/cable'

  mount Facebook::Messenger::Server, at: "bot"

  root 'chat_rooms#index'
end
