Rails.application.routes.draw do
  root "static_pages#home"
  get "/category", to: 'categories#home'
  get "/create_post", to: 'create_posts#home'
  devise_for :users
end
