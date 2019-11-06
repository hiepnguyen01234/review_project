Rails.application.routes.draw do
  root "static_pages#home"
  get "/category", to: 'categories#home'
  devise_for :users
end
