Rails.application.routes.draw do
  root 'home#index'
  get '/home/second'
  resources :diaries
  resources :calendars
  devise_for :users
end
