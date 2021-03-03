# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users, :controller => { registrations: 'registrations'}
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :likes
  end

  resources :profile_posts

  root to: 'posts#index'
end
