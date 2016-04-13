Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'home/raise_zombie'
  resources :blogs
  resources :grunts
  resources :zombies
  resources :graveyards
end
