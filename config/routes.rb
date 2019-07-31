Rails.application.routes.draw do
  get 'trips/index'
  get 'calendars/index'
  root 'home#index'

  devise_for :users
end
