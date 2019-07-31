Rails.application.routes.draw do
  get 'picnics/index'
  root 'home#index'

  resources :diaries
  resources :calendars
  resources :picnics

  devise_for :users
end
