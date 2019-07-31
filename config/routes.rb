Rails.application.routes.draw do
  root 'home#index'
  resources :diaries
  resources :calendars
  devise_for :users
end
