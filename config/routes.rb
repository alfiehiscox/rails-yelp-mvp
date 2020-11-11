Rails.application.routes.draw do
  # get 'reviews/create'
  # get 'reviews/new'
  # get 'restaurants/index'
  # get 'restaurants/create'
  # get 'restaurants/new'
  # get 'restaurants/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
