Rails.application.routes.draw do
  get 'messages/index'
  get 'chats/create'
  get 'chats/new'
  get 'chats/show'
  get 'chats/index'
  root 'home#index'

  resources :diaries
  resources :calendars
  resources :picnics
  resources :items, only: :show do
    resources :reviews
    member do
      get :toggle
    end
  end
  resources :messages, only: :index

  devise_for :users
  
      resources :chats
      get 'chats/index'
    
end
