Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/new'
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

  devise_for :users
end
