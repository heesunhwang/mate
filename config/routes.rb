Rails.application.routes.draw do
  root 'home#index'

  resources :diaries
  resources :calendars
  resources :picnics

  devise_for :users
end
